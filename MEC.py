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
import shlex
import sys
if '../..' not in sys.path:
    sys.path.append('../..')

from basico import *
import pandas as pd
import time
from datetime import date, datetime
import re
#import matplotlib.pyplot as plt
#%matplotlib inline

#######################
# AUXILIARY FUNCTIONS #

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
    # find model name inside a CN
    mname = re.findall(r'^CN=Root,Model=(.+?),', expression )
    if( mname ):
        expression = re.sub(r'^CN=Root,Model=(.+?),', f'CN=Root,Model={newname},', expression )
    # find object names inside []
    evars = re.findall(r'\[(.+?)\]', expression )
    if( evars ):
        for el in evars:
            #check that the variable exists
            if( is_element(el) ):
                elnew = el + suff
                expression = re.sub(f'\[{el}\]', f'[{elnew}]', expression )
    # find object names inside ()
    evars = re.findall(r'\((.+?)\)', expression )
    if( evars ):
        for el in evars:
            #check that the variable exists
            if( is_element(el) ):
                elnew = el + suff
                expression = re.sub(f'\({el}\)', f'({elnew})', expression )
    # find object names inside () special case of ( something(else) )
    evars = re.findall(r'\((.*\(.*\).*?)\)', expression )
    if( evars ):
        for el in evars:
            print(f' el: {el}')
            #check that the variable exists
            if( is_element(el) ):
                elnew = el + suff
                el = re.sub(r'\(', r'\\(', el)
                el = re.sub(r'\)', r'\\)', el)
                expression = re.sub(el,elnew, expression )
    # find object names like R1.Rate, I2.InitialParticleNumber, etc.
    evars = re.findall(r'([^\s\]\)]+?)\.\w', expression )
    if( evars ):
        for el in evars:
            #check that the variable exists
            if( is_element(el) ):
                elnew = el + suff
                expression = re.sub(f'{el}\\.(\\w)', f'{elnew}.\\1', expression )
    return expression

# function to check that value is positive, helper for argparse
def check_positive(value):
    ivalue = int(value)
    if ivalue <= 0:
        raise argparse.ArgumentTypeError("%s is an invalid negative value" % value)
    return ivalue

############################
# MAIN PROGRAM STARTS HERE #

############
# Strategy:
#  1. parse command line and deal with options
#  2. read original model,
#  3. copy notes, annotations, and units
#  4. create new model
#  MAIN LOOP, iterating over each model element:
#    5. create parameters, compartments, species without expressions
#    6. create reactions (and fix mappings)
#    7. set expressions for compartments and species
#    8. create events that depende on variable
#  9. loop over remaining events that don't depend on variables
#  10. copy task settings
#  11. save model
#  TODO: what to do with parameter sets?
#  TODO: what to do with element annotations?
############

#####
#  1. parsing the command line
#####

parser = argparse.ArgumentParser(
                    prog='MEC.py',
                    description='Convert one COPASI model into a set of similar models.')
# arguments
parser.add_argument('filename', help='original model file')
parser.add_argument('rows', type=check_positive, default=2,
                    help='total number of units or number of rows of a rectangular grid')
parser.add_argument('columns', nargs='?', type=check_positive, default=1,
                    help='number of columns of rectangular a grid')
parser.add_argument('-q', '--quiet', action='store_true', help='supress information messages')
parser.add_argument('--ignore-tasks', action='store_true', help='do not copy any task settings')

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
    print("Error: Nothing to do, one copy only is the same as the original model!\nAt least one of rows or columns must be larger than 1.\n")
    exit()

# strings to add to comments and titles, etc
if(gridr==1):
    fsuff = f"_{gridc}"
    desc = f"a set of {nmodels} replicas"
    apdx1 = '_1'
else:
    if(gridc==1):
        fsuff = f"_{gridr}"
        desc = f"a set of {nmodels} replicas"
        apdx1 = '_1'
    else:
        fsuff = f"_{gridr}x{gridc}"
        desc = f"a set of {nmodels} ({gridr}x{gridc}) replicas"
        apdx1 = '_1,1'

#####
#  2. read the original model
#####

seedmodel = load_model(seedmodelfile, remove_user_defined_functions=True)
if( seedmodel is None):
    print(f"File {seedmodelfile} failed to load.\n")
    exit()

# print some information about the model
if( not args.quiet ):
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

# get the reactions
mreacts = get_reactions(model=seedmodel, exact=True)
#print(mreacts)
if( mreacts is None):
    seednreacts = 0
else:
    seednreacts = mreacts.shape[0]

# get the events
mevents = get_events(model=seedmodel, exact=True)
if( mevents is None):
    seednevents = 0
else:
    seednevents = mevents.shape[0]

# print summary of model elements
if( not args.quiet ):
    print(f"  Reactions:         {seednreacts}")
    print(f"  Species:           {seednspecs}\t(Reactions: {sreact}, Fixed: {sfixed}, Assignment: {sassg}, ODE: {sode})")
    print(f"  Compartments:      {seedncomps}\t(Fixed: {cfixed}, Assignment: {cassg}, ODE: {code})")
    print(f"  Global quantities: {seednparams}\t(Fixed: {pfixed}, Assignment: {passg}, ODE: {pode})")
    # we print the events later to be able to show how many are only time dependent

# read scan items
# we need to retrieve then now before we create a new model due to a bug in COPASI/BasiCO (not sure which)
scanitems = get_scan_items(model=seedmodel)

#####
#  3. copy notes, annotations, and units
#####

seedname = get_model_name(model=seedmodel)

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

#####
#  4. create new model
#####

# create filename for new model
newfilename = f"{base}{fsuff}.cps"

# create the new model name
newname = f"{desc} of {seedname}"

# create the new model
newmodel = new_model(name=newname,
                     notes=nnotes,
                     quantity_unit=munits['quantity_unit'],
                     time_unit=munits['time_unit'],
                     volume_unit=munits['volume_unit'],
                     area_unit=munits['area_unit'],
                     length_unit=munits['length_unit'])

# set the intial time
it= get_value('Time', model=seedmodel)
set_value('Time', 6.0, True)

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

#####
#  MAIN LOOP
#####

# we use "_i" as suffix if the arrangement is only a set
# of models, but use "_r,c" as suffix if they are a grid
i = 0
for r in range(gridr):
    for c in range(gridc):
        if(gridr==1 or gridc==1):
            apdx = f"_{i+1}"
        else:
            apdx = f"_{r+1},{c+1}"

#####
#  5. create parameters, compartments and species
#####
        # PARAMETERS
        if( seednparams>0 ):
            for p in mparams.index:
                nname = p + apdx
                add_parameter(model=newmodel, name=nname, status='fixed', initial_value=mparams.loc[p].at['initial_value'], unit=mparams.loc[p].at['unit'] )
        if( seedncomps > 0):
            for p in mcomps.index:
                nname = p + apdx
                add_compartment(model=newmodel, name=nname, status=mcomps.loc[p].at['type'], initial_size=mcomps.loc[p].at['initial_size'], unit=mcomps.loc[p].at['unit'], dimiensionality=mcomps.loc[p].at['dimensionality'] )
        if( seednspecs > 0):
            for p in mspecs.index:
                nname = p + apdx
                cp = mspecs.loc[p].at['compartment'] + apdx
                add_species(model=newmodel, name=nname, compartment_name=cp, status=mspecs.loc[p].at['type'], initial_concentration=mspecs.loc[p].at['initial_concentration'], unit=mspecs.loc[p].at['unit'] )

#####
#  6. create reactions
#####

        # REACTIONS
        if( seednreacts > 0):
            for p in mreacts.index:
                nname = p + apdx
                scheme = mreacts.loc[p].at['scheme']
                tok = scheme.split(';')
                #tok2 = [sub.split() for sub in tok]
                tok2 = [shlex.split(sub, posix=False) for sub in tok]
                # build the reaction string
                rs = ""
                for t in tok2[0]:
                    if( (t == '=') or (t == '->') or (t == '+') or is_float(t) or (t=="*")):
                        rs = rs + t + " "
                    else:
                        if re.match(r'\".+\"', t):
                            t = re.sub( r'\"(.+)\"', f'"\\1{apdx}"', t )
                            rs = rs + t + " "
                        else:
                            rs = rs + t + apdx + " "
                if( len(tok2) > 1 ):
                    # deal with the modifiers
                    rs = rs[:len(rs)-1] + "; "
                    for t in tok2[1]:
                        if re.match(r'\".+\"', t):
                            t = re.sub( r'\"(.+)\"', f'"\\1{apdx}"', t )
                            rs = rs + t + " "
                        else:
                            rs = rs + t + apdx + " "
                # fix the parameter mappings
                mapp = mreacts.loc[p].at['mapping'].copy()
                for key in mapp:
                    if( isinstance(mapp[key], str) ):
                        t = mapp[key]
                        if re.match(r'\".+\"', t):
                            t = re.sub( r'\"(.+)\"', f'"\\1{apdx}"', t )
                        else:
                            t = t + apdx
                        mapp[key] = t
                    else:
                        if( isinstance(mapp[key], list ) ):
                            nmk = []
                            for k2 in mapp[key]:
                                if re.match(r'\".+\"', k2):
                                    k2 = re.sub( r'\"(.+)\"', f'"\\1{apdx}"', k2 )
                                else:
                                    k2 = k2 + apdx
                                nmk.append(k2)
                            mapp[key] = nmk
                            #mapp[key] = [k2 + apdx for k2 in mapp[key]]
                add_reaction(model=newmodel, name=nname, scheme=rs, mapping=mapp, function=mreacts.loc[p].at['function'] )

#####
#  7. set expressions and initial_expressions
#####

        # PARAMETERS
        if( seednparams > 0 ):
            for p in mparams.index:
                nname = p + apdx
                if( mparams.loc[p].at['initial_expression'] ):
                    ie = fix_expression(mparams.loc[p].at['initial_expression'], apdx)
                    set_parameters(model=newmodel, name=nname, exact=True, initial_expression=ie )
                if( mparams.loc[p].at['type']=='assignment' or mparams.loc[p].at['type']=='ode'):
                    ex = fix_expression(mparams.loc[p].at['expression'], apdx)
                    set_parameters(model=newmodel, name=nname, exact=True, status=mparams.loc[p].at['type'], expression=ex )
        # COMPARTMENTS
        if( seedncomps > 0):
            for p in mcomps.index:
                nname = p + apdx
                if( mcomps.loc[p].at['initial_expression'] ):
                    ie = fix_expression(mcomps.loc[p].at['initial_expression'], apdx)
                    set_compartment(model=newmodel, name=nname, exact=True, initial_expression=ie )
                if( mcomps.loc[p].at['type']=='assignment' or mcomps.loc[p].at['type']=='ode'):
                    ex = fix_expression(mcomps.loc[p].at['expression'], apdx)
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

#####
#  8. create events
#####

        # EVENTS
        timeonlyevents = []
        if( seednevents > 0):
            for p in mevents.index:
                # fix the trigger expression
                tr = fix_expression(mevents.loc[p].at['trigger'], apdx)
                # we skip events that have no elements in the trigger (time-dependent only)
                if(tr != mevents.loc[p].at['trigger']):
                    # fix name
                    nm = p + apdx
                    # process the targets and expressions
                    assg = []
                    for a in mevents.loc[p].at['assignments']:
                        assg.append((fix_expression(a['target'],apdx), fix_expression(a['expression'],apdx)))
                    # add the event
                    add_event(model=newmodel, name=nm, trigger=tr, assignments=assg, delay=fix_expression(mevents.loc[p].at['delay'],apdx), priority=fix_expression(mevents.loc[p].at['priority'],apdx), persistent=mevents.loc[p].at['persistent'], fire_at_initial_time=mevents.loc[p].at['fire_at_initial_time'], delay_calculation=mevents.loc[p].at['delay_calculation'])
                else:
                    # the trigger does not involve any model element other than time
                    # add it to the list to be dealt with later
                    timeonlyevents.append(p)

        i += 1

#####
#  9. create events not dependent on variables
#####

etd=len(timeonlyevents)
entd = seednevents - etd
# now we can print out how many events there are...
if( not args.quiet ):
    print(f"  Events:            {seednevents}\t(Only time-dependent: {etd}, variable-dependent: {entd})")

# let's go over the events again to process those that are only time dependent
if( etd > 0 ):
    # loop over the time-only dependent events
    for p in timeonlyevents:
        # if the delay or priority expressions contain elements we use model_1
        dl = fix_expression(mevents.loc[p].at['delay'],apdx1)
        pr = fix_expression(mevents.loc[p].at['priority'],apdx1)
        if( not args.quiet ):
            if( dl != mevents.loc[p].at['delay'] ):
                print(f"Warning: Event {p} contains a delay expression dependent on variables, it was set to the variables of unit {apdx1}")
            if( pr != mevents.loc[p].at['priority'] ):
                print(f"Warning: Event {p} contains a priority expression dependent on variables, it was set to the variables of unit {apdx1}")
        # process the targets and expressions
        assg = []
        for a in mevents.loc[p].at['assignments']:
            # now loop over all replicates to duplicate the targets
            i = 0
            for r in range(gridr):
                for c in range(gridc):
                    if(gridr==1 or gridc==1):
                        apdx = f"_{i+1}"
                    else:
                        apdx = f"_{r+1},{c+1}"
                    # add the assignment
                    assg.append((fix_expression(a['target'],apdx), fix_expression(a['expression'],apdx)))
                    i = i + 1
        # add the event
        add_event(model=newmodel, name=p, trigger=mevents.loc[p].at['trigger'], assignments=assg, delay=dl, priority=pr, persistent=mevents.loc[p].at['persistent'], fire_at_initial_time=mevents.loc[p].at['fire_at_initial_time'], delay_calculation=mevents.loc[p].at['delay_calculation'])

#####
# 10. set task parameters
#####

if( not args.ignore_tasks):
    # time course
    tc = get_task_settings('Time-Course', basic_only=False, model=seedmodel)
    set_task_settings('Time-Course', {'scheduled': tc['scheduled'], 'problem': tc['problem'], 'method': tc['method']},model=newmodel)

    # steady state
    ss = get_task_settings('Steady-State', basic_only=False, model=seedmodel)
    set_task_settings('Steady-State', {'scheduled': ss['scheduled'], 'update_model': ss['update_model'], 'problem': ss['problem'], 'method': ss['method']},model=newmodel)

    # MCA
    mca = get_task_settings('Metabolic Control Analysis', basic_only=False, model=seedmodel)
    set_task_settings('Metabolic Control Analysis', {'scheduled': mca['scheduled'], 'update_model': mca['update_model'], 'problem': mca['problem'], 'method': mca['method']},model=newmodel)

    # Lyapunov Exponents
    le = get_task_settings('Lyapunov Exponents', basic_only=False, model=seedmodel)
    set_task_settings('Lyapunov Exponents', {'scheduled': le['scheduled'], 'update_model': le['update_model'], 'problem': le['problem'], 'method': le['method']},model=newmodel)

    # Time Scale Separation Analysis
    tsa = get_task_settings('Time Scale Separation Analysis', basic_only=False, model=seedmodel)
    set_task_settings('Time Scale Separation Analysis', {'scheduled': tsa['scheduled'], 'update_model': tsa['update_model'], 'problem': tsa['problem'], 'method': tsa['method']},model=newmodel)

    # Cross section
    cs = get_task_settings('Cross Section', basic_only=False, model=seedmodel)
    if( cs['problem']['SingleVariable'] != ''):
        newv = fix_expression(cs['problem']['SingleVariable'], apdx1)
        print(f'Warning: the cross section task was updated to use {newv} as variable.')
        cs['problem']['SingleVariable'] = newv
        set_task_settings('Cross Section', {'scheduled': cs['scheduled'], 'update_model': cs['update_model'], 'problem': cs['problem'], 'method': cs['method']},model=newmodel)

    # Linear Noise Approximation
    lna = get_task_settings('Linear Noise Approximation', basic_only=False, model=seedmodel)
    set_task_settings('Linear Noise Approximation', {'scheduled': lna['scheduled'], 'update_model': lna['update_model'], 'problem': lna['problem'], 'method': lna['method']},model=newmodel)

    # Sensitivities
    sen = get_sensitivity_settings(model=seedmodel)
    seff = fix_expression(sen['effect'],apdx1)
    scau = fix_expression(sen['cause'],apdx1)
    ssec = fix_expression(sen['secondary_cause'],apdx1)
    if( (seff != sen['effect']) or (scau != sen['cause']) or (ssec != sen['secondary_cause']) ):
        print(f'Warning: sensitivies task is now using items of unit {apdx1}")')
        sen['effect'] = seff
        sen['cause'] = scau
        sen['secondary_cause'] = ssec
    set_sensitivity_settings(sen, model=newmodel)

    # Parameter scan
    ps = get_task_settings('Scan', basic_only=False, model=seedmodel)
    set_task_settings('Scan', {'scheduled': ps['scheduled'], 'update_model': ps['update_model'], 'problem': ps['problem'], 'method': ps['method']},model=newmodel)

    # we got the scanitems way earlier due to a bug in COPASI/BasiCO ...
    # when there are scan or random sampling items, we convert them to be those of the first unit
    srw = False
    for sit in scanitems:
        if( sit['type']=='parameter_set' ):
            print(f'Warning: a scan of parameter sets exists in the original model but was not included in the new model.')
        else:
            if( sit['type']=='scan' ):
                newit = fix_expression(sit['item'], apdx1)
                srw = True
                add_scan_item(model=newmodel, type=sit['type'], num_steps=sit['num_steps'], item=newit, log=sit['log'], min=sit['min'], max=sit['max'], use_values=sit['use_values'], values=sit['values'] )
            else:
                if( sit['type']=='random' ):
                    newit = fix_expression(sit['item'], apdx1)
                    srw = True
                    add_scan_item(model=newmodel, type=sit['type'], num_steps=sit['num_steps'], item=newit, log=sit['log'], min=sit['min'], max=sit['max'], distribution=sit['distribution'])
                else:
                    if( sit['type']=='repeat' ):
                        add_scan_item(model=newmodel, type=sit['type'], num_steps=sit['num_steps'])
                    else:
                        tp = sit['type']
                        print(f'Warning: This scan task includes an unknonw type {tp}, likely from a new version of COPASI. Please file an issue on Github.')
    if( srw ): print('Warning: in Parameter scan task the scanned or sampled items are now converted to those of the first unit only.')

    #TODO: Optimization
    #TODO: Parameter estimation
    # consider not including these; when decided leave a comment stating why; consider printing warnings
    #TODO: Time Course Sensitivities


#TODO: what to do with reports?
#TODO: to do with plots?

#####
# 11. save model
#####

# save the new model
save_model(filename=newfilename, model=newmodel)
if( not args.quiet ):
    print(f"created new model {newfilename} with {desc} of {seedmodelfile}\n")


