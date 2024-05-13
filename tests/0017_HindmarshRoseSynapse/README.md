# 0017_HindmarshRoseSynapse

three replicates of Hindmarsh-Rose.cps connected by a chemical synapse by species ODE *x* using a graphviz file

## tests

- 1D, 3 units, network, synaptic connection global quantity ODE
- cps file reads well
- network file reads well
- check that warning is given for scan against parameter sets
- check that event is processed correctly (only time dependent)
- checks that there are three ODEs for x
- checks that synaptic constants are all defined at default values
- checks that there are two ODEs for br_i_j (the post-synaptic bound receptors)
- checks that ODEs for x_2 and x_3 have the synaptic current terms
