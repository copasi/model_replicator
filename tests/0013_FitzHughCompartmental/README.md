# 0013_FitzHughCompartmental

three replicates of FitzHugh-Nagumo.cps connected by diffusive connections by ODE *y* using a graphviz file

## tests

- 1D, 3 units, network, transport
- cps file reads well
- network file reads well
- check that warning is given for scan against parameter sets
- check that event is processed correctly (only time dependent)

- checks that there are exactly 3 transport reactions
- checks that existing assignments were processed correctly
