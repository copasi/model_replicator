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

*sbmodler* requires at least two command line arguments: 1) a base model file, and 2) the number of units to replicate. The simplest command that can be issued is: `sbmodelr mybasemodel.cps 2`; this would create a new file called `mybasemodel_2.cps` with two units that are exact copies of the model in `mybasemodel.cps`.

**File Input and Output**
The base model is either encoded in an [SBML](https:sbml.org) file (up to L3v2) or a [COPASI](https://copasi.org) file (extension `.cps`). The output of *sbmodelr* will be in the same format as the base model file unless forced to be in a specific format (explained below).

By default the output file will be named after the input file with an appendix to its name reflecting the number of replicate units. To specifically name the output file use the option `-o filename` or `--output filename`, for example the command `sbmodelr -o newmodel.cps basemodel.cps 2` would create `newmodel.cps` (without this option the output filename would be `basemodel_2.cps`).

 - To force the output file to be written in SBML format add the option `--sbml`; this option can take an argument specifying the level and version of SBML required (one of `l1v2`,`l2v3`,`l2v4`,`l2v5`,`l3v1`,`l3v2`).
 - To force the output file to be written in COPASI format you will need to explicitly name the output file with option `-o filename.cps` or `--output filename.cps`, ensuring that the filename ends with `.cps` extension.

**Number of replicates and connectivity**

*sbmodelr* creates more than one copy of the base model, organized as a 2D rectangular matrix, a 3D cuboid array, or a set of units with arbitrary connections. The number of units created is specified with 1, 2 or 3 numbers after the base model filename.

 - *2D Rectangular matrices* are created with two numbers specifying the number of rows and columns of the matrix. The command `sbmodelr basemodel.cps 3 5` creates 15 units organized as a matrix with 3 rows and 5 columns. If interactions are specified (see below) then they will be between its 4 neighboring units (left, right, top and bottom for the "bulk" units, while only 3 other units at the edges, and only 2 other units in the corners).  Note that this topology *is not* toroidal.
 - *3D Cuboid arrays* are created with three numbers specifying the number of rows, columns, and levels of the 3D array. The command `sbmodelr basemodel.cps 3 5 2` creates 30 units organized as a 3D array with 3 rows, 5 columns, and 2 levels. If interactions are specified (see below) then they will be between its 6 neighboring units (left, right, top, bottom, front and back for the "bulk" units, while only 4 other units at the edges, and only 3 other units in the corners).  Note that this topology *is not* toroidal.
 - *Sets of units with arbitrary connections* are created with just one number after the base filename - the total number of replicate units desired. The command `sbmodelr basemodel.cps 10` creates 10 units that are replicates of the base model, and as such they would have no connections between them. Any number of connections can be specified through a network file following the [DOT format](https://graphviz.org/doc/info/lang.html) of the [GraphViz package](https://graphviz.org/). Network files specifying connections are passed on with the `-n mynetfile.dot` or `--network mynetfile.dot` options. Beyond having to conform to the DOT format, *sbmodelr* also requires that the node names used can only be integer numbers that specify the units. Thus if we specify 10 units, the network file can only have nodes named `1` to `10`. The command `sbmodelr -n mynetfile.dot basemodel.cps 10` creates 10 replicate units that are connected through a network described in file `mynetfile.dot`. An example of the contents of that file could be simply: `graph { 1 -- 2 -- 3 -- 4 -- 5 -- 6 -- 7 -- 8 -- 9 -- 10}` and this would link the units in a string with units 1 and 10 at the ends.
