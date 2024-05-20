# model replicator - a tool to replicate one SBML/COPASI model into a set of replicas

This is a python-based command line utility (*sbmodelr*) that reads an SBML or COPASI model file and then replicates the existing model into several units. These units may be organized as a set (1D) potentially connected as a network, a 2D rectangular grid, or a 3D array. Each unit contains a complete copy of the original model with all its species, reactions, compartments, events, and global quantities. It is possible to connect these units by specifying species that are either a) transported between units, or b) acting as inhibitors or activators of the synthesis of others. Global quantities, compartments and species that are represented by explicit ODEs can be connected by a) diffusive terms (similar to transport), or b) chemical synapse terms (mimic chemical synapse connection between voltages of two electrically active cells). An additional unit called 'medium' can also be added which only contains the transported species. Transport and diffusive ODE connections can optionally be irreversible (only in 1D), while regulatory interactions and chemical synapse connections can only be irreversible and added to 1D networks (i.e. not in grids or arrays). Finally, it is also possible to add randomness to parameter values, such that each unit becomes slightly different from each other.

Practical uses of this script include:
 - using a cell model to create a model of a tissue or organoid, 
 - use a gene transcription model to create a gene regulatory network
 - use a neuron model (e.g. the Hodgkin-Huxley) to create a network of neurons

The output of this program is a new model file with the more complex model. If the original was an SBML model the output will automatically be another SBML model, if it was a COPASI model then the output will be another COPASI model; note that in this case the script attempts to adapt the Tasks to use the new model. It is also possible to input one format and output the other through commmand line options.

This program is inspired by [MEG](http://www.gepasi.org/meg.html) [1], a utility included in the old [Gepasi](http://www.gepasi.org) simulator. The COPASI GUI and the [BasiCO](https://github.com/copasi/basico) python API [2] both contain some functionality similar to that provided here, however they are limited to replicating compartments (with all their species and reactions), but *do not* operate on events and global quantities nor on simulation tasks.

**References**
 1. [Mendes P, Kell DB (2001) MEG (Model Extender for Gepasi): a program for the modelling of complex, heterogeneous, cellular systems. Bioinformatics 17:288–289](https://doi.org/10.1093/bioinformatics/17.3.288)
 2. [Bergmann FT (2023) BASICO: A simplified Python interface to COPASI. Journal of Open Source Software 8:5553](https://doi.org/10.21105/joss.05553)


