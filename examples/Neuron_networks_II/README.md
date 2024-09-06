# Neuron networks II
## Large Networks of reduced neuron models

This example takes a base unit defining a reduced model of a neuron and creates larger neural networks. Because of the size of the network, it is useful to have as small a model for each unit neuron as possible to reduce the the size of the resulting network model and its computation time. One of the earliest such models is the FitzHugh-Nagumo model (1,2), which represents spiking neurons but few other features. Izhikevich proposed a smaller model (3), which includes an intrinsic event, and which is faster to compute. In addition the Izhikevich neuron can replicate the behaviour of a large class of neurons by adjusting its parameter values, becoming an ideal base unit for larger spiking neural network models.


### Case 1

We create a simple feedforward network motif where one such RSA neuron connects to another one. The *ff2.dot* network file specifies the network and looks simply like this:


File *ex4case1.sh* contains the full *sbmodelr* command required to create the new model.

| command line options       | comment                                                                |
| -------------------------- | ---------------------------------------------------------------------- |
|``sbmodelr``                | run *sbmodelr*                                                         |
|`` --output ex4case1.cps``  | name the output file                                                   |
|`` -n ff2.dot``             | network file that has simple 2-neuron feedforward motif                |
|`` --ode-synaptic V``       | indicate global quantity that holds voltage (V) where the synapse acts |
|`` --synapse-g 0.08``       | set the synaptic conductance value                                     |
|`` RSA_neuron.cps``         | COPASI file with the RSA neuron base unit                              |
|`` 2``                      | create 2 units                                                         |

Running the command explained above (e.g. by running file *ex4case1.sh*) results in a new model file *ex4case1.cps*.
After loading that file into COPASI we make the following modifications:
 1. delete the events for unit 2 (*pulse_on_2* and *pulse_off_2*)
 2. create a time course plot for *I_inj_1* (injected current into neuron 1), *V_1* (neuron 1 membrane potential), *V_2* (neuron 2 membrane potential) and *br_V_1,2* (proportion of bound synaptic receptor)
 3. save the file (*ex4case1.cps*)

Below is a representative time course generated from *ex4case1.cps* after the modifications. Note that each time course is different, given the random spacing of the current inputs. At the top are the membrane potentials of the two neurons, with neuron 1 in blue and neuron 2 in yellow. The middle panel shows the proportion of bound receptor in the post-synaptic membrane, and the bottom panel shows the current inputs into neuron 1. Neuron 2 is responding to action potentials from neuron 1 with its own action potentials at a short delay.

![Two RSA neurons connected by a chemical synapse. Top: membrane potentials (neuron 1 in blue, neuron 2 in yellow), middle: proportion of postsynaptic bound receptor, bottom: current pulses into neuron 1.](ex4case1_fig2.png)


## References

1. FitzHugh R (1961) Impulses and Physiological States in Theoretical Models of Nerve Membrane. [Biophysical J.1:445–466](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC1366333/)
2. Nagumo J, Arimoto S, Yoshizawa S (1962) An Active Pulse Transmission Line Simulating Nerve Axon. [paper presented at the Proceedings of the IRE 50:2061–2070](https://doi.org/10.1109/JRPROC.1962.288235)
3. Izhikevich EM (2003) Simple model of spiking neurons. [IEEE Transactions on Neural Networks 14:1569–1572](https://doi.org/10.1109/TNN.2003.820440)

