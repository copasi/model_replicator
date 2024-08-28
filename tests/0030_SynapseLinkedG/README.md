# 0030_SynapseLinkedG

three replicates of IzhikevichBurstingNeuron.cps connected by chemical synapses by ODE *v* with a linked synaptic g (conductance)

## tests

- 1D, 3 units, network, synaptic connection global quantity ODE, linked synaptic g
- cps file reads well
- network file reads well
- checks that there is a master synapse g global quantity
- checks that there are 2 synapse g global quantities that are assignments
- running the model through COPASI produces output
