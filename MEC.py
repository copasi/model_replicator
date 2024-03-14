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

# function to test if string has a number, it's amazing this is not native to python...
def is_float(string):
    try:
        float(string)
        return True
    except ValueError:
        return False

# DEFAULT GRID SIZE
gridr = 2
gridc = 1

# check if arguments were passed to size the grid
n = len(sys.argv)

# make sure there is at least one argument (.cps file)
if( n < 2 ):
    # invalid number of arguments
    print("\nUsage: MEC.py filename [rows [colums]]\n")
    exit()

seedmodelfile = sys.argv[1]

if( n>=3 ):
    # we got two arguments, set rows
    try:
        gridr = int(sys.argv[2])
        # if the number is non-positive raise exception
        if( gridr<1): raise
    except:
        print("\nInvalid arguments, must be a positive integer.\n")
        exit()

if( n>=4 ):
    # we got three arguments, set columns
    try:
        gridc = int(sys.argv[3])
        # if the numbers are non-positive raise exception
        if( gridc<1 ): raise
    except:
        print("\nInvalid arguments, must be a positive integer.\n")
        exit()

# get the base of the filename
base,ext = os.path.splitext(seedmodelfile)

# sanity check
nmodels= gridr*gridc

if(nmodels==1):
    print("\nNothing to do, one copy is the same as the original!\n")
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

# print some information about the model
print(f"\nProcessing {seedmodelfile}")

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
    sreact = (mspecs['type']=='reactions').sum()
    sfixed = (mspecs['type']=='fixed').sum()
    sassg = (mspecs['type']=='assignment').sum()
    sode = (mspecs['type']=='ode').sum()
else:
    seednspecs = mspecs.shape[0]
    # count subsets (fixed, assignment, ode)
    sreact = (mspecs['type']=='reactions').sum()
    sfixed = (mspecs['type']=='fixed').sum()
    sassg = (mspecs['type']=='assignment').sum()
    sode = (mspecs['type']=='ode').sum()
    #print(mspecs)

print(f"# Species:\t{seednspecs}\n #Reactions:\t{sreact}\t# Fixed:\t{sfixed}\t# Assignments:\t{sassg}\t# ODE:\t{sode}")

mreacts = get_reactions(model=seedmodel, exact=True)
if( mspecs is None):
    seednreacts = 0
else:
    seednreacts = mreacts.shape[0]
    print(mreacts)

print(f"# Reactions:\t{seednreacts}\n")

# loop over all replicates
i = 0
for r in range(gridr):
    for c in range(gridc):
        if(gridr==1 or gridc==1):
            apdx = f"_{i+1}"
        else:
            apdx = f"_{r+1},{c+1}"

        # PARAMETERS
        if( seednparams>0 ):
            for p in mparams.index:
                nname = p + apdx
                u = mparams.loc[p].at['unit']
                ex = mparams.loc[p].at['expression']
                ie = mparams.loc[p].at['initial_expression']
                if(mparams.loc[p].at['type']=='fixed'):
                    if(ie):
                        add_parameter(model=newmodel, name=nname, status='fixed', initial_expression=ie, unit=u )
                    else:
                        iv = mparams.loc[p].at['initial_value']
                        add_parameter(model=newmodel, name=nname, status='fixed', initial_value=iv, unit=u )
                else:  # ode and assignment
                    if(ie):
                        add_parameter(model=newmodel, name=nname, status=mparams.loc[p].at['type'], expression=ex, initial_expression=ie, unit=u )
                    else:
                        iv = mparams.loc[p].at['initial_value']
                        add_parameter(model=newmodel, name=nname, status=mparams.loc[p].at['type'], expression=ex, initial_value=iv, unit=u )

        # COMPARTMENTS
        if( seedncomps > 0):
            for p in mcomps.index:
                nname = p + apdx
                u = mcomps.loc[p].at['unit']
                ex = mcomps.loc[p].at['expression']
                iv = mcomps.loc[p].at['initial_size']
                ie = mcomps.loc[p].at['initial_expression']
                dim = mcomps.loc[p].at['dimensionality']
                if(mcomps.loc[p].at['type']=='fixed'):
                    if(ie):
                        add_compartment(model=newmodel, name=nname, status='fixed', initial_expression=ie, unit=u, dimiensionality=dim )
                    else:
                        iv = mcomps.loc[p].at['initial_size']
                        add_compartment(model=newmodel, name=nname, status='fixed', initial_size=iv, unit=u, dimiensionality=dim )
                else:  # ode and assignment
                    if(ie):
                        add_compartment(model=newmodel, name=nname, status=mcomps.loc[p].at['type'], expression=ex, initial_expression=ie, unit=u, dimiensionality=dim )
                    else:
                        iv = mcomps.loc[p].at['initial_value']
                        add_compartment(model=newmodel, name=nname, status=mcomps.loc[p].at['type'], expression=ex, initial_size=iv, unit=u, dimiensionality=dim )

        # SPECIES
        for p in mspecs.index:
            nname = p + apdx
            cp = mspecs.loc[p].at['compartment'] + apdx
            u = mspecs.loc[p].at['unit']
            ex = mspecs.loc[p].at['expression']
            ie = mspecs.loc[p].at['initial_expression']
            # fixed and reactions
            if(mspecs.loc[p].at['type']=='fixed' or mspecs.loc[p].at['type']=='reactions'):
                if(ie):
                    add_species(model=newmodel, name=nname, compartment_name=cp, status=mspecs.loc[p].at['type'], initial_expression=ie, unit=u)
                else:
                    ic = mspecs.loc[p].at['initial_concentration']
                    add_species(model=newmodel, name=nname, compartment_name=cp, status=mspecs.loc[p].at['type'], initial_concentration=ic, unit=u )
            else:  # ode and assignment
                if(ie):
                    add_species(model=newmodel, name=nname, compartment_name=cp, status=mspecs.loc[p].at['type'], expression=ex, initial_expression=ie, unit=u)
                else:
                    ic = mspecs.loc[p].at['initial_concentration']
                    add_species(model=newmodel, name=nname, compartment_name=cp, status=mspecs.loc[p].at['type'], expression=ex, initial_concentration=ic, unit=u)

        # REACTIONS
        if( seednreacts > 0):
            for p in mreacts.index:
                nname = p + apdx
                scheme = mreacts.loc[p].at['scheme']
                tok = scheme.split(';')
                tok2 = [sub.split() for sub in tok]
                print(tok2)
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
                print(rs)

        i += 1


print(f"creating new model {newfilename} with {desc} of {seedmodelfile}\n")

# save the new model
save_model(filename=newfilename, model=newmodel)
