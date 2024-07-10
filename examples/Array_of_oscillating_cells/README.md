# Array of cells
## Spatio-temporal dynamics in cell layers with transport and diffusion through the medium

This follows the work of Schütze and Wolf (1) that used a core model of glycolysis with autocatalysis replicated in a 49x49 array. Each unit represents a cell and the medium in its vicinity, with transport of its two metabolites to and from the medium. The pathway roughly represents glycolysis with only two metabolites, *X* and *Y*, representing upper and lower glycolysis. Conversion of *X* to *Y* includes product activation (autocatalysis), *Y* is used for other processes and can also move to the medium. *X* is imported from the medium through an irreversible Michaelis-Menten process (active transport). The medium volume is set to be 10x larger than the cell volume. In this case the base model, *glycolysis-autocatalytic.cps*, contains the cell and the medium around it. The array of 49x49 units then connects the external metabolites (ie *X* and *Y* in the medium, named *Xex* and *Yex*) through reversible transport (akin to diffusion).

Here we will use a COPASI version of the single cell and its surrounding medium, *glycolysis-autocatalytic.cps*, as the base unit and make the larger models of 49x49 units. Because this is a square array of units, we do not have to provide a network file with the specific connectivity, *sbmodelr* will create it automatically since we provide the 2D dimensions (i.e. 49 49)

### Case 1
This replicates the results of Figure 4 of Reference 1. In this case only *Xex* diffuses between neighboring spaces (*Yex* is immobile). The *alpha* parameter (basal rate of the reaction converting X to Y) is allowed to vary between cells by +/- 10%. Parameter *Jin* is zero for all the units, except that it is set at 720.3 in the central unit (coordinates 25,25). The large model can be created with the command in file *ex3case1.sh*.

| command line options             | comment                                   |
| -------------------------------- | ----------------------------------------- |
|``sbmodelr``                      | run *sbmodelr*                            |
|`` --output ex3case1.cps``        | name the output file                      |
|`` -t Xex``                       | transport the species Xex                 |
|`` -k 5``                         | value of rate constant for transport      |
|``  --pn alpha 0.1 uni \``        | add noise to parameter alpha in each unit |
|`` glycolysis-autocatalytic.cps`` | COPASI file with the base unit            |
|`` 49 49``                        | create an array of 49x49 units            |

Running the command explained above (e.g. by running file *ex3case1.sh*) results in a new model file *ex3case1.cps*. Note that this takes a rather long time (38 minutes on a Xeon 3.4 GHz)! This is because the generated model has 2,401 units, resulting in a model with 4,802 compartments, 9,604 species, 16,709 reactions and 21,610 parameters!

We then have to load this model into COPASI (which also takes several minutes) in order to:

 1. set the *Jin_25,25* parameter to 720.3 (leave all other *Jin_i,j* at 0)
 2. create a plot to display [X] in each cell of row 25 ([X_25,1] ... [X_25,49]).

Note that many operations on this model by the COPASI GUI are currently very slow (at least up to version 4.44); the COPASI team is actively profiling the software with large models such as this one to improve its performance. COPASI needs about 10 Gb of RAM to process this file, if your system has less than 16Gb of RAM do not attempt to load this file!

After doing these operations and saving the modified file as *ex3case1ready.cps*, we obtain figures that reproduce the behavior displayed in Fig. 4 of reference 1.

![Reproduction of behavior in Fig.3A of reference 1 for cells 1-4, constant IP3 is applied in cell 1 and this causes calcium waves of different frequencies in neighboring cells](ex2case1_Ca_1-4.png)

**Fig. 1.** Reproduction of behavior in Fig.3A of reference 1 for cells 1-4, constant IP3 is applied in cell 1 and this causes calcium waves of different frequencies in neighboring cells.

![Reproduction of behavior in Fig.3A of reference 1 for cells 5-12, constant IP3 is applied in cell 1 and this causes very small amplitude calcium waves in distant cells](ex2case1_Ca_5-12.png)

**Fig. 2.** Reproduction of behavior in Fig.3A of reference 1 for cells 5-12, constant IP3 is applied in cell 1 and this causes very small amplitude calcium waves in distant cells (c.f. scale in Fig. 1).

![Reproduction of behavior in Fig.3B of reference 1, constant IP3 is applied in cell 1 and this causes diminishing IP3 waves in distant cells](ex2case1_IP3.png)

**Fig. 3.** Reproduction of behavior in Fig.3B of reference 1, constant IP3 is applied in cell 1 and this causes diminishing IP3 waves in distant cells.


### Case 2


| command line options      | comment                                          |
| ------------------------- | ------------------------------------------------ |
|``sbmodelr``               | run *sbmodelr*                                   |
|`` --output ex2case2.cps`` | name the output file                             |
|`` --Hill-transport IP3``  | transport the species IP3 with Hill kinetics     |
|`` --transport-Vmax 4``    | value of Vmax for transport rate law             |
|`` --transport-Km 0.72``   | value of Km for transport rate law               |
|`` --transport-h 4``       | value of Hill coefficient for transport rate law |
|`` -n row_of_12.gv``       | network file with the cell connections           |
|`` ChI_DePitta2009.cps``   | COPASI file with the base unit                   |
|`` 12``                    | create 12 units                                  |

Running the command explained above (e.g. by running file *ex2case2.sh*) results in a new model file *ex2case2.cps*.
We then have to, again, load this model into COPASI in order to:

 1. set the IP3  concentration in unit 1 fixed at value 1.0 (as in Figure 3 of ref. 1)
 2. create plots to display [Ca] and [IP3] in each cell

After doing these operations and saving the modified file as *ex2case2ready.cps*, we obtain figures that approximately reproduce the behavior displayed in Fig. 3C and 3D of reference 1 (despite the kinetics being different).

![Approximate reproduction of behavior in Fig.3C of reference 1; constant IP3 is applied in cell 1 and this causes calcium waves of different frequencies in neighboring cells](ex2case2_Ca.png)

**Fig. 4.** Approximate reproduction of behavior in Fig.3C of reference 1; constant IP3 is applied in cell 1 and this causes calcium waves of different frequencies in neighboring cells. Note that in this case there are oscillations in all cells, unlike in Fig. 1 with linear transport kinetics.

![Approximate reproduction of behavior in Fig.3D of reference 1, constant IP3 is applied in cell 1 and this causes diminishing IP3 waves in distant cells](ex2case2_IP3.png)

**Fig. 5.** Approximate reproduction of behavior in Fig.3D of reference 1, constant IP3 is applied in cell 1 and this causes diminishing IP3 waves in distant cells.


## References and notes

1. Schütze J, Wolf J (2010) Spatio-temporal dynamics of glycolysis in cell layers. A mathematical model. [BioSystems 99:104–108](https://doi.org/10.1016/j.biosystems.2009.10.002)

