#!/usr/bin/python3
#
# MEC.py
# Model Extender for COPASI
#
# This takes a .cps file and replicates it as a set of sub-models
# which can exist just side-by-side or can be connected in different
# ways.
#
# Written March 2024 by Pedro Mendes <pmendes@uchc.edu>
# this code is released under the MIT license

import os
import argparse
import sys
if '../..' not in sys.path:
    sys.path.append('../..')

from basico import *
import numpy as np
import pandas as pd
import time
from datetime import date, datetime
import re
#import matplotlib.pyplot as plt
#%matplotlib inline

###
# AUXILIARY FUNCTIONS
###

# function to test if string has a number, it's amazing this is not native to python...
def is_float(string):
    try:
        float(string)
        return True
    except ValueError:
        return False

# function to check if a string is an element in the model
def is_element(candidate):
    y=False
    if( (seednparams>0) and (candidate in mparams.index) ):
        y=True
    else:
        if( (seedncomps>0) and (candidate in mcomps.index) ):
            y=True
        else:
            if( (seednspecs>0) and (candidate in mspecs.index) ):
                y=True
            else:
                if( (seednreacts>0) and (candidate in mreacts.index) ):
                    y=True
    return y

# function to change expression fixing all references to element names with the appropriate suffix
def fix_expression(expression, suff):
    # find object names inside []
    vars = re.findall(r'\[(.+?)\]', expression )
    if( vars ):
        for el in vars:
            #check that the variable exists
            if( is_element(el) ):
                elnew = el + suff
                expression = re.sub(f'\[{el}\]', f'[{elnew}]', expression )
    # find object names inside ()
    vars = re.findall(r'\((.+?)\)', expression )
    if( vars ):
        for el in vars:
            #check that the variable exists
            if( is_element(el) ):
                elnew = el + suff
                expression = re.sub(f'\({el}\)', f'({elnew})', expression )
    # find object names like R1.Rate, I2.InitialParticleNumber, etc.
    vars = re.findall(r'([^\s\]\)]+?)\.\w', expression )
    if( vars ):
        for el in vars:
            #check that the variable exists
            if( is_element(el) ):
                elnew = el + suff
                expression = re.sub(f'{el}\\.(\\w)', f'{elnew}.\\1', expression )
                print(expression)
    return expression

# function to check that value is positive, helper for argparse
def check_positive(value):
    ivalue = int(value)
    if ivalue <= 0:
        raise argparse.ArgumentTypeError("%s is an invalid negative value" % value)
    return ivalue

# parsing the command line
parser = argparse.ArgumentParser(
                    prog='MEC.py',
                    description='Convert one COPASI model into a set of similar models.')
# arguments
parser.add_argument('filename', help='original model file')
parser.add_argument('rows', type=check_positive, default=2,
                    help='total number of units or number of rows of a rectangular grid')
parser.add_argument('columns', nargs='?', type=check_positive, default=1,
                    help='number of columns of rectangular a grid')

# Parse the arguments
args = parser.parse_args()

seedmodelfile = args.filename
gridr = args.rows
gridc = args.columns

# get the base of the filename
base,ext = os.path.splitext(seedmodelfile)

# sanity check
nmodels = gridr*gridc

if(nmodels==1):
    print("usage: MEC.py [-h] filename rows [columns]]\n\nNothing to do, one copy only is the same as the original model!\nAt least one of rows or columns must be > 1.\n")
    exit()

# strings to add to comments and titles, etc
if(gridr==1):
	fsuff = f"_{gridc}"
	desc = f"a set of {nmodels} replicas"
else:
	if(gridc==1):
		fsuff = f"_{gridr}"
		desc = f"a set of {nmodels} replicas"
	else:
		fsuff = f"_{gridr}x{gridc}"
		desc = f"a set of {nmodels} ({gridr}x{gridc}) replicas"

# create filename for new model
newfilename = f"{base}{fsuff}.cps"

# load the original model
seedmodel = load_model(seedmodelfile, remove_user_defined_functions=True)

# print some information about the model
print(f"Processing {seedmodelfile}")

#Get the global quantities
mparams = get_parameters(model=seedmodel, exact=True)
if( mparams is None):
    seednparams = 0
    pfixed = 0
    passg = 0
    pode = 0
else:
    seednparams = mparams.shape[0]
    # count subsets (fixed, assignment, ode)
    pfixed = (mparams['type']=='fixed').sum()
    passg = (mparams['type']=='assignment').sum()
    pode = (mparams['type']=='ode').sum()

print(f"# Global quantities:\t{seednparams}\n # Fixed:\t{pfixed}\t# Assignments:\t{passg}\t# ODE:\t{pode}")

#Get the compartments
mcomps = get_compartments(model=seedmodel, exact=True)
if( mcomps is None):
    seedncomps = 0
    cfixed = 0
    cassg = 0
    code = 0
else:
    seedncomps = mcomps.shape[0]
    # count subsets (fixed, assignment, ode)
    cfixed = (mcomps['type']=='fixed').sum()
    cassg = (mcomps['type']=='assignment').sum()
    code = (mcomps['type']=='ode').sum()
    #print(mcomps)

print(f"# Compartments:\t{seedncomps}\n # Fixed:\t{cfixed}\t# Assignments:\t{cassg}\t# ODE:\t{code}")

#Get the species
mspecs = get_species(model=seedmodel, exact=True)
if( mspecs is None):
    seednspecs = 0
    sreact = 0
    sfixed = 0
    sassg = 0
    sode = 0
else:
    seednspecs = mspecs.shape[0]
    # count subsets (fixed, assignment, ode)
    sreact = (mspecs['type']=='reactions').sum()
    sfixed = (mspecs['type']=='fixed').sum()
    sassg = (mspecs['type']=='assignment').sum()
    sode = (mspecs['type']=='ode').sum()
    #print(mspecs)

print(f"# Species:\t{seednspecs}\n #Reactions:\t{sreact}\t# Fixed:\t{sfixed}\t# Assignments:\t{sassg}\t# ODE:\t{sode}")

# get the reactions
mreacts = get_reactions(model=seedmodel, exact=True)
if( mspecs is None):
    seednreacts = 0
else:
    seednreacts = mreacts.shape[0]
    #print(mreacts)

print(f"# Reactions:\t{seednreacts}\n")

# create the new model name
seedname = get_model_name(model=seedmodel)
newname = f"{desc} of {seedname}"

# edit the notes
nnotes = get_notes(model=seedmodel)
# check if notes are empty
if not nnotes:
    nnotes = f"<body xmlns=\"http://www.w3.org/1999/xhtml\"><p><br/></p><hr/><p>Processed with MEC to produce {desc} of {seedmodelfile}</p></body>"
else:
    # check if the notes are in HTML
    index = nnotes.find('</body>')
    if( index == -1 ):
        # not HTML, so add a simple string
        nnotes = nnotes + f"\n\nProcessed with MEC to produce {desc} of {seedmodelfile}"
    else:
        # add info at the end of the body section
        nend = nnotes[index:]
        nnotes = nnotes[:index] + f"<hr/><p>Processed with MEC to produce {desc} of {seedmodelfile}</p>" + nend

# get original model units
munits = get_model_units(model=seedmodel)

# create the new model
newmodel = new_model(name=newname,
                     notes=nnotes,
                     quantity_unit=munits['quantity_unit'],
                     time_unit=munits['time_unit'],
                     volume_unit=munits['volume_unit'],
                     area_unit=munits['area_unit'],
                     length_unit=munits['length_unit'])

# transfer the annotations
miriam = get_miriam_annotation(model=seedmodel)
if 'created' in miriam:
    set_miriam_annotation(model=newmodel, created=miriam['created'], replace=True)
if 'creators' in miriam:
    set_miriam_annotation(model=newmodel, creators=miriam['creators'], replace=True)
if 'references' in miriam:
    set_miriam_annotation(model=newmodel, references=miriam['references'], replace=True)
if 'description' in miriam:
    set_miriam_annotation(model=newmodel, description=miriam['description'], replace=True)
# add one modification now
if 'modifications' in miriam:
    miriam['modifications'].append(datetime.now())
    set_miriam_annotation(model=newmodel, modifications=miriam['modifications'], replace=True)
else:
    modf = []
    modf.append(datetime.now())
    set_miriam_annotation(model=newmodel, modifications=modf, replace=True)

############
#  MAIN LOOP
#
# the loop does this for each new replicate model:
#    1) create parameters, compartments, species without expressions
#    2) create reactions (and fix mappings)
#    3) set expressions for compartments and species
#    4) create events TO DO
#    5) parameter sets? TO DO
#    6) element annotations? TO DO
############

# we use "_i" as suffix if the arrangement is only a set
# of models, but use "_r,c" as suffix if they are a grid

i = 0
for r in range(gridr):
    for c in range(gridc):
        if(gridr==1 or gridc==1):
            apdx = f"_{i+1}"
        else:
            apdx = f"_{r+1},{c+1}"

        # FIRST create all elements without expressions

        # PARAMETERS
        if( seednparams>0 ):
            for p in mparams.index:
                nname = p + apdx
                add_parameter(model=newmodel, name=nname, status='fixed', initial_value=mparams.loc[p].at['initial_value'], unit=mparams.loc[p].at['unit'] )
        # COMPARTMENTS
        if( seedncomps > 0):
            for p in mcomps.index:
                nname = p + apdx
                add_compartment(model=newmodel, name=nname, status=mcomps.loc[p].at['type'], initial_size=mcomps.loc[p].at['initial_size'], unit=mcomps.loc[p].at['unit'], dimiensionality=mcomps.loc[p].at['dimensionality'] )
        # SPECIES
        if( seednspecs > 0):
            for p in mspecs.index:
                nname = p + apdx
                cp = mspecs.loc[p].at['compartment'] + apdx
                add_species(model=newmodel, name=nname, compartment_name=cp, status=mspecs.loc[p].at['type'], initial_concentration=mspecs.loc[p].at['initial_concentration'], unit=mspecs.loc[p].at['unit'] )
        # REACTIONS
        if( seednreacts > 0):
            for p in mreacts.index:
                nname = p + apdx
                scheme = mreacts.loc[p].at['scheme']
                tok = scheme.split(';')
                tok2 = [sub.split() for sub in tok]
                # build the reaction string
                rs = ""
                for t in tok2[0]:
                    if( (t == '=') or (t == '->') or (t == '+') or is_float(t) or (t=="*")):
                           rs = rs + t + " "
                    else:
                        rs = rs + t + apdx + " "
                if( len(tok2) > 1 ):
                    rs = rs[:len(rs)-1] + "; "
                    for t in tok2[1]:
                        rs = rs + t + apdx + " "
                # fix the parameter mappings
                mapp = mreacts.loc[p].at['mapping'].copy()
                for key in mapp:
                    if( isinstance(mapp[key], str) ):
                        mapp[key] = mapp[key] + apdx
                    else:
                        if( isinstance(mapp[key], list ) ):
                            mapp[key] = [k2 + apdx for k2 in mapp[key]]
                add_reaction(model=newmodel, name=nname, scheme=rs, mapping=mapp, function=mreacts.loc[p].at['function'] )

        # SECOND set expressions and initial_expressions

        # PARAMETERS
        if( seednparams > 0 ):
            for p in mparams.index:
                nname = p + apdx
                if( mparams.loc[p].at['initial_expression'] ):
                    ie = fix_expression(mparams.loc[p].at['initial_expression'], apdx)
                    set_parameters(model=newmodel, name=nname, exact=True, initial_expression=ie )
                if( mparams.loc[p].at['type']=='assignment' or mparams.loc[p].at['type']=='ode'):
                    print( mparams.loc[p].at['expression'] )
                    ex = fix_expression(mparams.loc[p].at['expression'], apdx)
                    print(ex)
                    set_parameters(model=newmodel, name=nname, exact=True, status=mparams.loc[p].at['type'], expression=ex )
        # COMPARTMENTS
        if( seedncomps > 0):
            for p in mcomps.index:
                nname = p + apdx
                if( mcomps.loc[p].at['initial_expression'] ):
                    ie = fix_expression(mcomps.loc[p].at['initial_expression'], apdx)
                    set_compartment(model=newmodel, name=nname, exact=True, initial_expression=ie )
                if( mcomps.loc[p].at['type']=='assignment' or mcomps.loc[p].at['type']=='ode'):
                    print( mcomps.loc[p].at['expression'] )
                    ex = fix_expression(mcomps.loc[p].at['expression'], apdx)
                    print(ex)
                    set_compartment(model=newmodel, name=nname, exact=True, expression=ex )
        # SPECIES
        if( seednspecs > 0):
            for p in mspecs.index:
                nname = p + apdx
                cp = mspecs.loc[p].at['compartment'] + apdx
                if( mspecs.loc[p].at['initial_expression'] ):
                    ie = fix_expression(mspecs.loc[p].at['initial_expression'], apdx)
                    set_species(model=newmodel, name=nname, exact=True, initial_expression=ie )
                if( mspecs.loc[p].at['type']=='assignment' or mspecs.loc[p].at['type']=='ode'):
                    ex = fix_expression(mspecs.loc[p].at['expression'], apdx)
                    set_species(model=newmodel, name=nname, exact=True, expression=ex )
        i += 1


print(f"creating new model {newfilename} with {desc} of {seedmodelfile}\n")

# save the new model
save_model(filename=newfilename, model=newmodel)


