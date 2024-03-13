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
#import numpy as np
import time
from datetime import date, datetime
import re
#import matplotlib.pyplot as plt
#%matplotlib inline

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
# print some information about the model
print(f"\nProcessing {seedmodelfile}")
print_model(seedmodel)
print(f"creating new model {newfilename} with {desc}\n")

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

# save the new model
save_model(filename=newfilename, model=newmodel)
