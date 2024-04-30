#!/usr/bin/env python3
#
# model_report.py
# produce a report file of SBML or COPASI model
#
# This takes a SBML or .cps file and creates a report about the model
#
# Written April 2024 by Pedro Mendes <pmendes@uchc.edu>
# this code is released under the Artistic 2.0 License

import argparse
import time
import html2text
import pandas as pd
from basico import *

parser = argparse.ArgumentParser(
                    prog='model_report.py',
                    description='produce a report file of SBML or COPASI model.')
# command line arguments
parser.add_argument('filename', help='model file', metavar='model')
parser.add_argument('-o', '--output', help='output filename', metavar='report')

# Parse the arguments
args = parser.parse_args()

# create report filename
if( args.output ):
    report = args.output
else:
    base,ext = os.path.splitext(os.path.basename(args.filename))
    report = f"{base}.summary.txt"

# load model
model = load_model(args.filename, remove_user_defined_functions=True)
if( model is None):
    print(f'ERROR: {args.filename} failed to load.\n')
    exit()

# open report file
try:
    outf = open(report, "w")
except:
    print(f'ERROR: cannot create file {report}')
    exit()

# model name
modelname = get_model_name()
outf.write(f"==== Model Name ====\n")
outf.write(f"{modelname}\n\n\n")

# model notes
htmlnotes = get_notes()
notes = html2text.html2text(htmlnotes)
outf.write(f"==== Model Notes ====\n")
outf.write(f"{notes}\n\n")

# compartments
comps = get_compartments()
if( comps is None):
    outf.write(f"==== Compartments: 0 ====\n\n")
else:
    ncomps = comps.shape[0]
    outf.write(f"==== Compartments: {ncomps} ====\n")
    print(comps.to_string(columns=['type','initial_size', 'unit', 'dimensionality', 'expression', 'initial_expression'], header=['type','size_0', 'unit','D','expression','expression_0'], index_names=False), file=outf)
    outf.write("\n\n")

# species
mspecs = get_species()
if( mspecs is None):
    outf.write(f"==== Species: 0 ====\n\n")
else:
    nspecs = mspecs.shape[0]
    outf.write(f"==== Species: {nspecs} ====\n")
    print(mspecs.to_string(columns=['type','initial_concentration', 'unit', 'compartment', 'expression', 'initial_expression'], header=['type','[]_0', 'unit','comp.', 'expression','expression_0'],index_names=False),  file=outf)
    outf.write("\n\n")

# reactions
mreacts = get_reactions()
if( mreacts is None):
    outf.write(f"==== Reactions: 0 ====\n\n")
else:
    nreacts = mreacts.shape[0]
    outf.write(f"==== Reactions: {nreacts} ====\n")
    print(mreacts.to_string(columns=['scheme','function', 'mapping'], header=['scheme','function', 'mapping'], index_names=False), file=outf)
    outf.write("\n\n")

    # report kinetic functions used
    mfuncs = mreacts['function'].unique()
    if( mfuncs is None):
        outf.write(f"==== Kinetic Functions: 0 ====\n\n")
    else:
        nfuncs = mfuncs.shape[0]
        outf.write(f"==== Kinetic Functions: {nfuncs} ====\n")
        funcs = get_functions()
        fdf = funcs[funcs.index.isin(mfuncs)]
        print(fdf.to_string(columns=['formula'], header=False, index_names=False), file=outf)
        outf.write("\n\n")


# global quantities
mparams = get_parameters()
if( mparams is None):
    outf.write(f"==== Global Quantities: 0 ====\n\n")
else:
    nparams = mparams.shape[0]
    outf.write(f"==== Global Quantities: {nparams} ====\n")
    print(mparams.to_string(columns=['type','initial_value','unit', 'expression','initial_expression'], header=['type','value_0','unit','expression', 'expression_0'], index_names=False), file=outf)
    outf.write("\n\n")

# events
mevents = get_events()
if( mevents is None):
    outf.write(f"==== Events: 0 ====\n\n")
else:
    nevents = mevents.shape[0]
    outf.write(f"==== Events: {nevents} ====\n")
    print(mevents.to_string(columns=['trigger','delay','assignments','fire_at_initial_time', 'persistent','priority'], header=['trigger','delay','targets','fire_t0', 'persist', 'pri'], index_names=False), file=outf)
    outf.write("\n\n")

# TODO: should we create a report about the tasks? in which case we need to know if copasi or SBML loaded

# close report file
outf.close()
