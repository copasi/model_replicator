# 0016_FitzHughSynapse

two replicates of FitzHugh-Nagumo.cps connected by a chemical synapse by ODE *x* using a graphviz file

## tests

- 1D, 2 units, network, synaptic connection global quantity ODE
- cps file reads well
- network file reads well
- check that warning is given for scan against parameter sets
- check that event is processed correctly (only time dependent)
- checks that there are two ODEs for x
- checks that synaptic constants are all defined at default values
- checks that there is an ODE for br_1_2 (the post-synaptic bound receptor)
- checks that ODE for x_2 has the synaptic current term
