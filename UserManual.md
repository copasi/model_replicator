# *sbmodelr*  User Manual

## Summary
*sbmodelr* takes as input an SBML or COPASI file describing a model. It then creates a new model that replicates the original in several copies ('units') where each one may interact with other ones. The topology of the connections can be arbitrary (described in a DOT network file), a 2D rectangular matrix, or a 3D cuboid array. Several options are available to randomize parameter values, supress creation of compartments, etc.

For a full set of options run `sbmodelr --help` on the command line.

### Examples
The rest of this document describes the many options that are available in *sbmodelr*, but specific examples of usage are provided in the `examples` folder, which illustrate real-world usage of this tool, mostly replicating existing modeling papers. The examples are:

 - [Cells in a medium](examples/Cells_in_medium): single cell organisms with species transported to the medium
 - [Row of cells with gap junctions](examples/Row_of_cells_gap_junctions): cells connected end-to-end by gap junctions
 - [Array of oscillating cells](examples/Array_of_oscillating_cells): a square array of cells in a medium with diffusion
 - [Neuron networks I](examples/Neuron_networks_I): small(ish) networks using a Hodgkin-Huxley-type model
 - [Neuron networks II](examples/Neuron_networks_II): large networks using the Izhikevich model
 - [Gene regulatory networks](examples/Gene_Regulatory_Networks): easy creation of large (or small) gene networks from a simple model file

## Required options

*sbmodler* requires at least two command line arguments: 1) a base model file, and 2) the number of units to replicate. The simplest command that can be issued is: `sbmodelr mybasemodel.cps 2`; this would create a new file called `mybasemodel_2.cps` with two units that are exact copies of the model in `mybasemodel.cps`.

### File Input and Output
The base model is either encoded in an [SBML](https:sbml.org) file (up to L3v2) or a [COPASI](https://copasi.org) file (extension `.cps`). The output of *sbmodelr* will be in the same format as the base model file unless forced to be in a specific format (explained below).

By default the output file will be named after the input file with an appendix to its name reflecting the number of replicate units. To specify a different output filename use the option `-o filename` or `--output filename`, for example the command `sbmodelr -o newmodel.cps basemodel.cps 2` would put the new model in the file `newmodel.cps` (without this option it would be `basemodel_2.cps`).

 - To force the output file to be written in SBML format add the option `--sbml`; this option can take an argument specifying the level and version of SBML required (one of `l1v2`,`l2v3`,`l2v4`,`l2v5`,`l3v1`,`l3v2`).
 - To force the output file to be written in COPASI format you will need to explicitly name the output file with option `-o filename.cps` or `--output filename.cps`, ensuring that the filename ends with `.cps` extension.

### Number of replicates and their connectivity

*sbmodelr* creates more than one copy of the base model, organized as a 2D rectangular matrix, a 3D cuboid array, or a set of units with arbitrary connections. The number of units created is specified with 1, 2 or 3 numbers after the base model filename.

 - *2D Rectangular matrices* are created with two numbers specifying the rows and columns of the matrix. The command `sbmodelr basemodel.cps 3 5` creates 15 units organized as a matrix with 3 rows and 5 columns. If interactions are specified (see below) then they will be between a unit's 4 neighboring units (left, right, top and bottom for the "bulk" units, while only 3 other units at the edges, and only 2 other units in the corners).  Note that this topology *is not* toroidal.
 - *3D Cuboid arrays* are created with three numbers specifying the rows, columns, and levels of the 3D array. The command `sbmodelr basemodel.cps 3 5 2` creates 30 units organized as a 3D array with 3 rows, 5 columns, and 2 levels. If interactions are specified (see below) then they will be between a unit's 6 neighboring units (left, right, top, bottom, front and back for the "bulk" units, while only 4 other units at the edges, and only 3 other units in the corners).  Note that this topology *is not* toroidal.
 - *Sets of units with arbitrary connections* are created with just one number after the base filename, specifying the total number of replicate units desired. The command `sbmodelr basemodel.cps 10` creates 10 units that are replicates of the base model, and as such they would have no connections between them. Any number of connections can be specified through a network file following the [DOT format](https://graphviz.org/doc/info/lang.html) of the [GraphViz package](https://graphviz.org/). Network files specifying connections are passed on with the `-n mynetfile.dot` or `--network mynetfile.dot` options. In addition to having to conform to the DOT format, *sbmodelr* also requires that the node names be integer numbers to specify each unit. Thus if we specify 10 units, the network file can only have nodes named `1` to `10`. The command `sbmodelr -n mynetfile.dot basemodel.cps 10` creates 10 replicate units that are connected through a network described in file `mynetfile.dot`. As an example, that file's content could be simply this: `graph { 1 -- 2 -- 3 -- 4 -- 5 -- 6 -- 7 -- 8 -- 9 -- 10}`, which defines a string of connected units with units 1 and 10 at the ends. The DOT language allows for two types of networks, undirected (specified by the keyword `graph` and edges as `--`) or directed (specified by the keyword `digraph` and edges as `->`). The outcome of using one or other depends on the types of connections required and is discussed below.  The examples further illustrate several network files. Network files do not need to have the `.dot` extension (or `.gv` that is also common), they can have any name and extension as long as they conform to the DOT syntax and the node names are integers.

While *sbmodelr* has special provisions to create 2D and 3D arrays, *any* kind of topology can be specified through the use of appropriate network files.

## Connecting the units
Currently there are four types of connections between units that can be added to the output model. They can be 1) transport of species, 2) diffusive connection of explicit ODEs, 3) regulatory interactions on the synthesis of species, and 4) chemical synapses through the method of Destexhe *et al.* (1994).

### Transport of species

If the base model has species that one wants to allow being transported between units, this can be specified with the option `-t species` or `--transport species`, where `species` is the species name. This will create transport reactions that are governed by mass action kinetics, where the rate constant is the same in both directions. A more general way of specifying transport is to use the option `--Hill-transport species` which will create transport steps following Hill kinetics. If connectivity is specified through a network file (option `-n netfile`) then the transport reactions will be reversible if the file specifies a `graph` with edges represented with `--`, or irreversible if the file specifies a `digraph` with edges represented with `->`. More specifically the rate laws used are described in the table below.

| transport option                    | network type | rate law                        | notes                     |
| ----------------------------------- | ------------ | ------------------------------- | ------------------------- |
|`-t species` or `--transport species`| graph        | *v = k·(species_i - species_j)* | 2D and 3D matrices        |
|`-t species` or `--transport species`| digraph      | *v = k·species_i*               | not for 2D or 3D matrices |
|`--Hill-transport species`           | graph        |*v = V·(species_i<sup>h</sup> - species_j<sup>h</sup> ) / (Km<sup>h</sup> + species_i<sup>h</sup> + species_j<sup>h</sup>)* | 2D and 3D matrices        |
|`--Hill-transport species`           | digraph      |*v = V·species_i<sup>h</sup> / (Km<sup>h</sup> + species_i<sup>h</sup>)* | not for 2D or 3D matrices |

where *k* is a transport rate constant, *V* is a maximal rate of transport, *Km* is the concentration of *species_i* (and *species_j*) when the rate is half of *V*, *h* is a Hill exponent, where if it is 1 the rate is hyperbolic (essentially the Michaelis-Menten equation), or if larger than 1 the rate is sigmoidal; *i* and *j* are the indices of the two units.


### Diffusive connection of explicit ODEs

The option to indicate that a variable should be connected by a diffusive interaction is `--d variable` or `--ode-diffusive variable`. The `variable` must be defined as an explicit `ode` type in the base model, or this option will generate an error.

This type of connection allows connecting variables that are explicit ODEs, such as species, global quantities, or compartments of type `ode` (not `fixed`, `assignment`  or `reactions`).  The "diffusive" interaction is mathematically the same as a mass-action transport reaction. If units *i* and *j* are connected then the diffusive interaction adds the following terms to the right-hand side (rhs) of the respective ODEs of these variables:

| variable   | network type | new term on rhs of ODE          |
| ---------- |------------- | ------------------------------- |
| variable_i |  graph       | *+ c·(variable_j - variable_i)* |
| variable_j |  graph       | *+ c·(variable_i - variable_j)* |
|            |              |                                 |
| variable_i |  digraph     | *- c·variable_i*                |
| variable_j |  digraph     | *+ c·variable_i*                |

where *c* is a diffusive rate constant.

If a network was specified as a (bi-directional) graph, or we are creating 2D or 3D arrays, the interaction is symetric and acts like diffusion, where the unit with the highest value "flows" into the variable with the lowest value until they become equal. If a network is defined as a digraph (directed graph), then there is only "flow" from one unit to the other (whatever direction was defined in the network file). The table above describes the terms that are added to the end of the right-hand side of the ODEs in each case.

Diffusive interactions can be used, for example, in connecting species that are transported, or diffuse between two compartments (*i.e.* formally the same as transport, but somehow these species were defined as explicit `ode` and so no reactions can be added). They also serve to connect two variables that represent electric potentials, where the constant *c* is interpreted as an conductivity between the two units.

### Regulatory interactions on the synthesis of species

### Chemical synapses

### Parameters for connections

Connecting units requires adding one or more parameters to the model. These parameters have built-in default values but it is possible to specify different values directly on the command line using the options listed below. Note that connection parameters will normally have the same value for *all* connections, however it is possible to have them randomized just like the parameters of the base model (see section on *Randomizing parameter values*). Of course, it is also possible to change them, one by one, by loading the resulting model into a modeling tool like COPASI.

| connection type                | parameter | default | option to set value                       |
| ------------------------------ | --------- | ------- | ----------------------------------------- |
| transport (`-t`)               | *k*       | 1.0     | `-k value` or `--transport-k value`       |
| transport (`--Hill-transport`) | *Km*      | 1.0     | `--transport-Km value`                    |
| transport (`--Hill-transport`) | *Vmax*    | 1.0     | `--transport-Vmax value`                  |
| transport (`--Hill-transport`) | *h*       | 1.0     | `--transport-h value`                     |
| diffusive (`-d`)               | *c*       | 1.0     | `-c value` or `--coupling-constant value` |
| regulatory network (`-g`)      | *V*       | 1.0     | `--grn-V value`                           |
| regulatory network (`-g`)      | *a*       | 1.0     | `--grn-a value`                           |
| regulatory network (`-g`)      | *h*       | 2       | `--grn-h value`                           |
| chemical synapse (`-s`)        | *g*       | 1.0     | `--synapse-g value`                       |
| chemical synapse (`-s`)        | *V0*      | -20.0   | `--synapse-V0 value`                      |
| chemical synapse (`-s`)        | *Vsyn*    | 20.0    | `--synapse-Vsyn value`                    |
| chemical synapse (`-s`)        | *tau_r*   | 0.5     | `--synapse-tau-r value`                   |
| chemical synapse (`-s`)        | *tau_d*   | 10      | `--synapse-tau-d value`                   |


## Randomizing parameter values
