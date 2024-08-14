# 0029_SynapseNoise

three replicates of IzhikevichBurstingNeuron.cps connected by chemical synapses by ODE *v* adding noise

## tests

- 1D, 3 units, network, synaptic connection global quantity ODE, noise
- cps file reads well
- network file reads well
- checks that there are two ODEs for br_i_j (the post-synaptic bound receptor)
- checks that there are two Vsyn parameters
- checks that there are two tau_r parameters
- checks that there are two tau_d parameters
- running the model through COPASI produces output
