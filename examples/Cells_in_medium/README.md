# Cells in medium
## Synchronization of cells through transport of metabolites through the medium

This follows the work of Wolf and Heinrich (1), which takes a simple model of glycolytic oscillations (2) as the base unit (a cell with oscillating glycolysis) and creates a new model with suspensions consisting of an arbitrary number N of interacting units. The individual cells interact via the flux of metabolites, which are produced in all cells and may permeate through the cell membranes (1). Two specific cases are examined: in Model I the coupling is via the product of the autocatalytic reaction (species Y), and in Model II the coupling is via the substrate of the autocatalytic reaction (species X).

We create several examples following (1) using either Model I or II. Each example is codified in a shell script, and included are all the files produced by sbmodelr and COPASI, which are invoked in the shell script.

### Case 1
This is Model I, with 2 cells producing synchronous oscillations (file *ex1case1.sh*). We set the two cells to have different initial conditions (options ``--pn``), set the rate constant for transport to be 3.2, as in Fig. 3 of
ref. 1), and the medium volume to be 10 (5-fold the number of cells, to keep the density of intracellular volume
to 0.2 and in ref. 1).

| command line options         | comment                              |
| ---------------------------- | ------------------------------------ |
|``sbmodelr``                  | run sbmodelr                         |
|`` --output case1.cps``       | name the output file                 |
|`` --add-medium``             | include a medium unit                |
|`` --medium-volume 10``       | set medium volume (5*N)              |
|`` --transport Y``            | transport the species Y (Model I)    |
|`` --transport-k 3.2``        | value of rate constant for transport |
|`` --pn X 0.5 uni``           | initial values of X inside +/-50% interval around value of X in base |
|`` --pn Y 0.5 uni``           | initial values of Y inside +/-50% interval around value of Y in base |
|`` Selkov-Wolf-Heinrich.cps`` | COPASI file with the base unit       |
|`` 2``                        | create 2 units                       |

Running the command explained above (e.g. by running file *ex1case.sh*), results in a new model *case1.cps*. Loading that file into COPASI, creating a plot for Y_1, Y_2 and Y_medium, and adjusting its axes, entirely reproduces Fig. 3 of reference 1.


## References

1. Wolf J, Heinrich R (1997) Dynamics of two-component biochemical systems in interacting cells; synchronization and desynchronization of oscillations and multiple steady states. [BioSystems 43:1–24](https://doi.org/10.1016/s0303-2647(97)01688-2)
2. Sel’kov EE (1968) Self-oscillations in glycolysis. 1. A simple kinetic model. [European Journal of Biochemistry 4:79–86](https://doi.org/10.1111/j.1432-1033.1968.tb00175.x)