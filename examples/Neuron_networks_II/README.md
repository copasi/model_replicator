# Neuron networks II
## Large Networks of reduced neuron models

This example takes a base unit defining a reduced model of a neuron and creates larger neural networks. Because of the size of the network, it is useful to have as small a model for each unit neuron as possible to reduce the the size of the resulting network model and its computation time. One of the earliest such models is the FitzHugh-Nagumo model (1,2), which represents spiking neurons but few other features. Izhikevich proposed a smaller model (3), which includes an intrinsic event, and which is faster to compute. In addition the Izhikevich neuron can replicate the behaviour of a large class of neurons by adjusting its parameter values, becoming an ideal base unit for larger spiking neural network models.


### Case 1

We create a network of 100 neurons with 200 chemical synapses connected randomly, encoded in the file *netwwork100-200.dot*. The neurons are based on the Izhikevich model and were tuned to be regular spiking neurons. The network is depicted below:

![network of 100 neurons with 200 synapses](network100-200.png)

File *ex5case1.sh* contains the full *sbmodelr* command required to create the new model.

| command line options       | comment                                                                |
| -------------------------- | ---------------------------------------------------------------------- |
|``sbmodelr``                | run *sbmodelr*                                                         |
|`` --output ex5case1.cps``  | name the output file                                                   |
|`` -n network100-200.dot``  | network file with 100 randomly connected neurons and 200 synapses      |
|`` --ode-synaptic v``       | indicate global quantity that holds voltage (v) where the synapse acts |
|`` --synapse-g 0.2``        | set the synaptic conductance value                                     |
|``  --synapse-link-g``      | link all synapse conductances to one value                             |
|`` Izhikevich.cps``         | COPASI file with the Izhikevich neuron base unit                       |
|`` 100``                    | create 100 units                                                         |



## References

1. FitzHugh R (1961) Impulses and Physiological States in Theoretical Models of Nerve Membrane. [Biophysical J.1:445–466](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC1366333/)
2. Nagumo J, Arimoto S, Yoshizawa S (1962) An Active Pulse Transmission Line Simulating Nerve Axon. [paper presented at the Proceedings of the IRE 50:2061–2070](https://doi.org/10.1109/JRPROC.1962.288235)
3. Izhikevich EM (2003) Simple model of spiking neurons. [IEEE Transactions on Neural Networks 14:1569–1572](https://doi.org/10.1109/TNN.2003.820440)

