# User Manual for *sbmodelr* - a tool to replicate one SBML/COPASI model into a set of replicas

## Summary
*sbmodelr* takes as input an SBML or COPASI file describing a model. It then creates a new model that replicates the original in several copies ('units') where each one may interact with other ones. The topology of the connections can be arbitrary (described in a DOT network file), a 2D rectangular matrix, or a 3D cuboid array. Several options are available to randomize parameter values, supress creation of compartments, etc.

For a full set of options run `sbmodelr --help` on the command line.

## Examples
The rest of this document describes the many options that are available in *sbmodelr*, but specific examples of usage are provided in the `examples` folder, which illustrate real-world usage of this tool, mostly replicating existing modeling papers. The examples are:

 - [Cells in a medium](examples/Cells_in_medium)
 - Row of cells with gap junctions
 - Array of oscillating cells
 - Neuron networks I: small(ish) networks using a Hodgkin-Huxley-type model
 - Neuron networks II: large networks using the Izhikevich model
 - Gene regulatory networks: easy creation of large (or small) gene networks from a simple model file

## Usage



## Saved text
If the original was an SBML model the output will automatically be another SBML model, if it was a COPASI model then the output will be another COPASI model; note that in this case the script attempts to adapt the Tasks to use the new model. It is also possible to input one format and output the other through commmand line options.
