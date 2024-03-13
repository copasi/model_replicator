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
from datetime import date
import re
#import matplotlib.pyplot as plt
#%matplotlib inline

# DEFAULT GRID SIZE
gridr = 3
gridc = 1

# check if arguments were passed to size the grid
n = len(sys.argv)

# make sure there is at least one argument (.cps file)
if( n < 2 ):
    # invalid number of arguments
    print("\nUsage: MEC.py filename rows colums\n")
    exit()

seedmodelfile = sys.argv[1]

if( n>=3 ):
    # we got two arguments, set rows and columns
    try:
        gridr = int(sys.argv[2])
        gridc = int(sys.argv[3])
        # if the numbers are non-positive raise exception
        if( gridr<1) or (gridc<1): raise
    except:
        print("\nInvalid arguments, rows and columns must be positive integers.\n")
        exit()

# get the base of the filename
base,ext = os.path.splitext(seedmodelfile)

# sanity check
nmodels= gridr*gridc

if(nmodels==1):
	print("\nNothing to do, 1x1 grid is the same as the original!\n")
	exit()

if(gridr==1):
	fsuff = f"_{gridc}"
	desc = f"a set of {nmodels} replicas of "
else:
	if(gridc==1):
		fsuff = f"_{gridr}"
		desc = f"a set of {nmodels} replicas of "
	else:
		fsuff = f"_{gridr}x{gridc}"
		desc = f"a set of {nmodels} ({gridr}x{gridc}) replicas of "

# create filename for new model
newfilename = f"{base}{fsuff}.cps"

print(f"\ncreating a model with {desc}{seedmodelfile}\nsaving as {newfilename}\n")

# load the original model
seedmodel = load_model(seedmodelfile, remove_user_defined_functions=True)

seedname = get_model_name(model=seedmodel)

newname = f"{desc}{seedname}"

newmodel = new_model(name=newname)

notes = get_notes(model=seedmodel)

save_model(filename=newfilename, model=newmodel)

# Comments for the whole model
notes_footer=f'<hr/><p>Processed with MEC to produce {desc}{seedmodelfile}</p>'

