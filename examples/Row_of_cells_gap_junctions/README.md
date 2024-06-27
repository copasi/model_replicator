# Row of cells with gap junctions
## propagation of pulsating calcium waves in astrocyte networks

This follows the work of Goldberg *et al.* (1), which uses a model of calcium oscillations induced by IP3 from De Pittà  *et al.* (2), named ChI model, which was an extension of the Li-Rinzel model (3). They create a row of 11 cells (astrocytes) connected laterally by gap junctions that allow transport of IP3 between neighboring cells. They then trigger input of IP3 at one cell and check how the calcium waves propagate in the cell network. They examine two cases: one with gap junctions that operate like passive diffusion, and another where the kinetics of the gap junctions have a threshold.

Because this cell topology is a single row, we have to provide the actual specific connectivity in a network file. This is because *sbmodelr* allows any arbitratry connections when the user specifies simply a number of cells. In Example 1, there is a set of cells that are only connected to the medium (not cell-to-cell). In 2 or 3 dimensions, *sbmodelr* assumes a rectangular or cuboid grid of connections. But with just a number of cells (1D) the connectivity has to be explicit (this also allows for arbitrary ways of connecting units). In this case we have a line of cells, so the content of network file *row_of_11.gv* is:

``graph row_of_11 {``
``1 -- 2 -- 3 -- 4 -- 5 -- 6 -- 7 -- 8 -- 9 -- 10 -- 11``
``}``

These network files follow the syntax used by the Graphviz software ([DOT language](https://graphviz.org/doc/info/lang.html)), but with the limitation that the nodes have to be identified by numbers.

Taking a COPASI file with the ChI model for one cell and invoking *sbmodelr* with appropriate options, creates a new model consisting of 11 cells connected in a row, where IP3 can permeate through passive gap junctions (passive diffusion). Editing the resulting file is required, such that we can add the source for IP3 perturbation.

For each example there is a shell script that shows the complete command invoking *sbmodelr*, the base file,
the resulting complex model file (*case[123].cps*), and an image file with results. The images were obtained
by specifying an appropriate plot in the resulting files using the COPASI GUI, as *sbmodlr* does not copy plot settings
to the new models.

### Case 1
This is a the case where IP3 is transported through simple diffusive kinetics (like mass action) (file *ex2case1.sh*). .

| command line options      | comment                                |
| ------------------------- | -------------------------------------- |
|``sbmodelr``               | run *sbmodelr*                         |
|`` --output case1.cps``    | name the output file                   |
|`` -t IP3``                | transport the species IP3              |
|`` -n row_of_11.gv``       | network file with the cell connections |
|`` ChI_DePitta2009``       | COPASI file with the base unit         |
|`` 11``                    | create 11 units                        |

Running the command explained above (e.g. by running file *ex1case1.sh*) results in a new model file *case1.cps*.
Loading that file into COPASI, creating a plot for Y_1, Y_2 and Y_medium, and adjusting its axes,
reproduces Fig. 3 of reference 1.

![Reproduction of Fig.3 of reference 1, the two intracellular Y oscillate in phase and Y in the medium oscillates with lower amplitude and out of phase](case1.png)

### Case 2

### Case 3

## References

1. Goldberg M, Pittà MD, Volman V, Berry H, Ben-Jacob E (2010) Nonlinear Gap Junctions Enable Long-Distance Propagation of Pulsating Calcium Waves in Astrocyte Networks. [PLOS Computational Biology 6:e1000909](https://doi.org/10.1371/journal.pcbi.1000909)
2. De Pittà M, Goldberg M, Volman V, Berry H, Ben-Jacob E (2009) Glutamate regulation of calcium and IP3 oscillating and pulsating dynamics in astrocytes. [Journal of Biological Physics 35:383–411](https://doi.org/10.1007/s10867-009-9155-y)
3. Li Y-X, Rinzel J (1994) Equations for InsP3 Receptor-mediated [Ca2+]i Oscillations Derived from a Detailed Kinetic Model: A Hodgkin-Huxley Like Formalism. [Journal of Theoretical Biology 166:461–473](https://doi.org/10.1006/jtbi.1994.1041)


