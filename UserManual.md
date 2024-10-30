# User Manual for *sbmodelr* - a tool to replicate one SBML/COPASI model into a set of replicas

## Summary
*sbmodelr* takes as input an SBML or COPASI file describing a model. It then creates a new model that replicates the original in several copies ('units') where each one may interact with other ones. The topology of the connections can be arbitrary (described in a DOT network file), a 2D rectangular matrix, or a 3D cuboid array. Several options are available to randomize parameter values, supress creation of compartments, etc.

For a full set of options run `sbmodelr --help` on the command line.

## Examples
The rest of this document describes the many options that are available in *sbmodelr*, but specific examples of usage are provided in the `examples` folder, which illustrate real-world usage of this tool, mostly replicating existing modeling papers. The examples are:

 - [Cells in a medium](examples/Cells_in_medium): single cell organisms with species transported to the medium
 - [Row of cells with gap junctions](examples/Row_of_cells_gap_junctions): cells connected end-to-end by gap junctions
 - [Array of oscillating cells](examples/Array_of_oscillating_cells): a square array of cells in a medium with diffusion
 - [Neuron networks I](examples/Neuron_networks_I): small(ish) networks using a Hodgkin-Huxley-type model
 - [Neuron networks II](examples/Neuron_networks_II): large networks using the Izhikevich model
 - [Gene regulatory networks](examples/Gene_Regulatory_Networks): easy creation of large (or small) gene networks from a simple model file

## Usage

### Required options

*sbmodler* requires at least command line arguments: 1) a base model file, and 2) the number of units to replicate. The most simple command that can be issued is: `sbmodelr mybasemodel.cps 2` which creates a new file called `mybasemodel_2.cps` with two units that are exact copies of the model in `mybasemodel.cps`.

**File formats and options**
The base model is either encoded in an [SBML](https:sbml.org) file (up to L3v2) or a [COPASI](https://copasi.org) file (extension `.cps`). The output of *sbmodelr* will be in the same format as the supplied file.

By default the output file will be named after the input file with an appendix to its name reflecting the number of replicate units. To specifically name the output file use the option `-o filename` or `--output filename`, for example `sbmodelr -o newmodel.cps basemodel.cps 2` which would create `newmodel.cps` (without this option the default name would be `basemodel_2.cps`).

To force the output file to be in SBML format use option `--sbml`; this option can take an argument specifying the level and version of SBML required (one of `l1v2`,`l2v3`,`l2v4`,`l2v5`,`l3v1`,`l3v2`).

To force the output file to be in COPASI format you will need to explicitly name the output file with option `-o filename` or `--output filename`, and ensure the filename ends with `.cps` extension.


## Saved text
If the original was an SBML model the output will automatically be another SBML model, if it was a COPASI model then the output will be another COPASI model; note that in this case the script attempts to adapt the Tasks to use the new model. It is also possible to input one format and output the other through commmand line options.
