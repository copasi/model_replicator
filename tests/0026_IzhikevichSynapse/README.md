# 0026_IzhikevichSynapse

three replicates of IzhikevichBurstingNeuron.cps connected by chemical synapses by ODE *v* using a graphviz file

## tests

- 1D, 3 units, network, synaptic connection global quantity ODE
- cps file reads well
- network file reads well
- output file named correctly
- checks that there are three ODEs for v
- check that variable-dependent event is processed correctly
- check that time dependent event is processed correctly
- checks that there are two ODEs for br_i_j (the post-synaptic bound receptor)
- running the model through COPASI produces output
