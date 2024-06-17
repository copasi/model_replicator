# Cells in medium
## Synchronization of cells through transport of metabolites to the medium

This follows the work of Wolf and Hierich (1), which takes a simple model of glycolytic oscillations (2) as the base unit (a cell with oscillating glycolysis) and creates a new model with suspensions consisting of an arbitrary number N of interacting units. The individual cells interact via the flux of metabolites, which are produced in all cells and may permeate through the cell membranes (1). Two specific cases are examined: in Model I the coupling is via the product of the autocatalytic reaction (species Y), and in Model II the coupling is via the substrate of the autocatalytic reaction (species X).

We create several examples following (1) using either Model I or II. Each example is codified in a shell script, and included are all the files produced by sbmodelr and COPASI, which are invoked in the shell script.

### Case 1
This is model I, with 2 cells producing synchronous oscillations (file *case1.sh*).

| command/options              | comment                          |
| ---------------------------- | -------------------------------- |
|``sbmodelr``                  | invoking sbmodelr                |
|`` --output case1.cps``       | name output file                 |
|`` --add-medium ``            | include a medium unit            |
|`` --transport Y``            | transport the species Y          |
|`` Selkov-Wolf-Heinrich.cps`` | a COPASI file with the base unit |
|`` 2 ``                       | add two units                    |



## References

1. Wolf J, Heinrich R (1997) Dynamics of two-component biochemical systems in interacting cells; synchronization and desynchronization of oscillations and multiple steady states. [BioSystems 43:1–24](https://doi.org/10.1016/s0303-2647(97)01688-2)
2. Sel’kov EE (1968) Self-oscillations in glycolysis. 1. A simple kinetic model. [European Journal of Biochemistry 4:79–86](https://doi.org/10.1111/j.1432-1033.1968.tb00175.x)
