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
outf.write(f"#### Model Name ####\n")
outf.write(f"{modelname}\n\n")

# model notes
notes = get_notes()
outf.write(f"#### Model Notes ####\n")
outf.write(f"{notes}\n\n")

# compartments
comps = get_compartments()
if( comps is None):
    outf.write(f"#### Compartments: 0 ---\n\n")
else:
    ncomps = comps.shape[0]
    outf.write(f"#### Compartments: {ncomps} ####\n")
    print(comps.to_string(columns=['type','initial_size', 'unit', 'dimensionality', 'expression', 'initial_expression'], header=['type','size_0', 'unit','D','expression','expression_0']), file=outf)
    outf.write("\n\n")

# close report file
outf.close()
