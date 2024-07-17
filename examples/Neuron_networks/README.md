# Neuron networks
## Networks of heterogeneous Hodgkin-Huxley neurons

This example follows the work of Giannari and Astolfi (1), which used a generalized Hodgkin-Huxley neuron model from Posposchil *et al.* (2) to make neural network motifs. They connect the neurons using an approach from Destexhe *et al.* (3) for chemical synapses, in which one ODE is added to the model per synapse (representing the proportion of occupied post-synaptic neurotransmitter receptor). This approach of connecting units by chemical synapses is available in *sbmodelr* with the option *--ode-synaptic* (or short option *-s*), which dentifies the global quantity of type ODE that represents voltage. It creates connections between units  that are assumed to be neuron models using the chemical synapse approach of Destexhe *et al.* (3). This chemical synapse approach allows making the synapses excitatory or inhibitory through the parameter Vsyn of the synapse (the synaptic reversal potential). Other synapse parameters relate to the characteristic time for neurotransmitter release (tau_r) and degradation (tau_d) and a reverse potential.


For each example there is a shell script that shows the complete command invoking *sbmodelr*, the base file,
the resulting complex model file (*case[123].cps*), and an image file with results. The images were obtained
by specifying an appropriate plot in the resulting files using the COPASI GUI, as *sbmodlr* does not copy plot settings
to the new models.

### Case 1
This uses Model I, with 2 cells producing synchronous oscillations (file *ex1case1.sh*). We set the two cells to have
different initial conditions (options ``--pn``), set the transport rate constant for transport to be 3.2, as in
Fig. 3 of ref. 1), and the medium volume to be 10 (to keep the ratio of volumes to 0.2 as in ref. 1).

| command line options         | comment                              |
| ---------------------------- | ------------------------------------ |
|``sbmodelr``                  | run *sbmodelr*                       |
|`` --output case1.cps``       | name the output file                 |
|`` --add-medium``             | include a medium unit                |
|`` --medium-volume 10``       | set medium volume (5*N)              |
|`` --transport Y``            | transport the species Y (Model I)    |
|`` --transport-k 3.2``        | value of rate constant for transport |
|`` --pn X 0.1 uni``           | initial values of X inside +/-10% interval around value of X in base |
|`` --pn Y 0.1 uni``           | initial values of Y inside +/-10% interval around value of Y in base |
|`` Selkov-Wolf-Heinrich.cps`` | COPASI file with the base unit       |
|`` 2``                        | create 2 units                       |

Running the command explained above (e.g. by running file *ex1case1.sh*) results in a new model file *case1.cps*.
Loading that file into COPASI, creating a plot for Y_1, Y_2 and Y_medium, and adjusting its axes,
reproduces Fig. 3 of reference 1.

![Reproduction of Fig.3 of reference 1, the two intracellular Y oscillate in phase and Y in the medium oscillates with lower amplitude and out of phase](case1.png)

### Case 2
This uses Model I, with 5 cells producing regular asynchronous oscillations (file *ex1case2.sh*). We set the five
cells to have different initial conditions (options ``--pn``), set the transport rate constant for transport to be 1,
as in Fig. 3 of ref. 1), and the medium volume to be 25 (to keep the ratio of intracellular over extracellular volume to
0.2 as in ref. 1). We use a different base file, *Selkov-Wolf-Heinrich_k2.5.cps*, which only differs from the one used
in case 1 by setting the constant *k*=2.5 (instead of 3.84).

| command line options              | comment                              |
| --------------------------------- | ------------------------------------ |
|``sbmodelr``                       | run *sbmodelr*                       |
|`` --output case2.cps``            | name the output file                 |
|`` --add-medium``                  | include a medium unit                |
|`` --medium-volume 25``            | set medium volume (5*N)              |
|`` --transport Y``                 | transport the species Y (Model I)    |
|`` --transport-k 1``               | value of rate constant for transport |
|`` --pn X 0.1 uni``                | initial values of X inside +/-10% interval around value of X in base |
|`` --pn Y 0.1 uni``                | initial values of Y inside +/-10% interval around value of Y in base |
|`` Selkov-Wolf-Heinrich_k2.5.cps`` | COPASI file with the base unit       |
|`` 5``                             | create 5 units                       |

Running the command explained above (e.g. by running file *ex1case2.sh*) results in a new model file *case2.cps*.
Loading that file into COPASI, creating a plot for Y_1, Y_2, Y_3, Y_4, Y_5 and Y_medium, and adjusting its axes,
reproduces Fig. 5 of reference 1.

![Reproduction of Fig.5 of reference 1, the five intracellular Y oscillate out phase shifted by 1/5 the value of the period; Y in the medium oscillates with very low amplitude, nearly constant](case2.png)

### Case 3
This uses Model II, with 3 cells producing a stable steady state but with oscillations before convergence
(file *ex1case3.sh*). We set the three cells to have different initial conditions (options ``--pn``),
set the transport rate constant for transport to be *k*=4.16, as in, and the medium volume to be 15 (to keep
the ratio of volumes to 0.2 as in ref. 1).

| command line options         | comment                              |
| --------------------------------- | ------------------------------------ |
|``sbmodelr``                       | run *sbmodelr*                       |
|`` --output case3.cps``            | name the output file                 |
|`` --add-medium``                  | include a medium unit                |
|`` --medium-volume 15``            | set medium volume (5*N)              |
|`` --transport X``                 | transport the species X (Model II)   |
|`` --transport-k 4.16``            | value of rate constant for transport |
|`` --pn X 0.1 uni``                | initial values of X inside +/-10% interval around value of X in base |
|`` --pn Y 0.1 uni``                | initial values of Y inside +/-10% interval around value of Y in base |
|`` Selkov-Wolf-Heinrich_k1.5.cps`` | COPASI file with the base unit       |
|`` 3``                             | create 3 units                       |

Running the command explained above (e.g. by running file *ex1case3.sh*) results in a new model file *case3.cps*.
Loading that file into COPASI, creating a plot for X_1, Y_1, X_2, Y_2, X_3, Y_3, and Y_medium displays the complex
approach to the steady state with oscillations. Note that not all units converge to the same steady state. This
corresponds to a small region in the bifurcation diagram of Fig. 12 of reference 1 (between lines kappa_c and
kappa_a).

![Complex approach to a stable steady state](case3.png)

## References

1. Giannari AG, Astolfi A (2022) Model design for networks of heterogeneous Hodgkin–Huxley neurons. [Neurocomputing 496:147–157](https://doi.org/10.1016/j.neucom.2022.04.115)
2. Pospischil M, Toledo-Rodriguez M, Monier C, Piwkowska Z, Bal T, Frégnac Y, Markram H, Destexhe A (2008) Minimal Hodgkin–Huxley type models for different classes of cortical and thalamic neurons. [Biological Cybernetics 99:427–441](https://doi.org/10.1007/s00422-008-0263-8)
3. Destexhe A, Mainen ZF, Sejnowski TJ (1994) An Efficient Method for Computing Synaptic Conductances Based on a Kinetic Model of Receptor Binding. [Neural Computation 6:14–18](https://doi.org/10.1162/neco.1994.6.1.14)
