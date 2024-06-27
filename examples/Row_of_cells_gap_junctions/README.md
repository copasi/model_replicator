# Row of cells with gap junctions
## propagation of pulsating calcium waves in astrocyte networks

This follows the work of Goldberg *et al.* (1), which uses a model of calcium oscillations induced by IP3 from De Pittà  *et al.* (2), named ChI model, which is an extension of the Li-Rinzel model (3) where IP3 is a variable of the model. They create a row of 11 cells (astrocytes) connected laterally by gap junctions that allow transport of IP3 between neighboring cells. They then trigger input of IP3 at one cell and check how the calcium waves propagate in the cell network. They examine two cases: one with gap junctions that operate like passive diffusion, and another where the kinetics of the gap junctions have a threshold.

Because this cell topology is a single row, we have to provide the actual specific connectivity in a network file. This is because *sbmodelr* allows any arbitratry connections when the user specifies simply a number of cells. In 2D or 3D, *sbmodelr* assumes a rectangular or cuboid grid of connections, but with just a number of cells (1D) the connectivity has to be provided explicitly (this allows for completely arbitrary ways of connecting units). In this case we have a line of cells, so the content of network file *row_of_11.gv* is:

```
graph row_of_11 {
1 -- 2 -- 3 -- 4 -- 5 -- 6 -- 7 -- 8 -- 9 -- 10 -- 11
}
```

These network files follow the syntax used by the Graphviz software ([DOT language](https://graphviz.org/doc/info/lang.html)), but with the limitation that the nodes have to be identified by numbers.

For each example there is a shell script that shows the complete command invoking *sbmodelr*, the base file,
the resulting complex model file (*case[123].cps*), and an image file with results. The images were obtained
by specifying an appropriate plot in the resulting files using the COPASI GUI, as *sbmodlr* does not copy plot settings
to the new models.

### Case 1
This is a the case where IP3 is transported through simple diffusive kinetics (like mass action) (file *ex2case1.sh*). .

| command line options      | comment                                |
| ------------------------- | -------------------------------------- |
|``sbmodelr``               | run *sbmodelr*                         |
|`` --output ex2case1.cps`` | name the output file                   |
|`` -t IP3``                | transport the species IP3              |
|`` -n row_of_11.gv``       | network file with the cell connections |
|`` ChI_DePitta2009``       | COPASI file with the base unit         |
|`` 11``                    | create 11 units                        |

Running the command explained above (e.g. by running file *ex2case1.sh*) results in a new model file *ex2case1.cps*.
We then have to load this model into COPASI in order to:

 # add a constant source IP3 connected to unit 1 (the first cell),
 # create plots to display [Ca] and [IP3] in each cell,
 # set up an event to add the perturbation.

After doing these operations in the resulting file, we obtain a figure that reproduces the behavior displayed in Fig. 3A and 3B of reference 1.

![Reproduction of behavior in Fig.3A and 3B of reference 1, constant IP3 is applied in cell 1 and this causes calcium waves in cells 2-6 at different times](ex2case1.png)

### Case 2

### Case 3

## References

1. Goldberg M, Pittà MD, Volman V, Berry H, Ben-Jacob E (2010) Nonlinear Gap Junctions Enable Long-Distance Propagation of Pulsating Calcium Waves in Astrocyte Networks. [PLOS Computational Biology 6:e1000909](https://doi.org/10.1371/journal.pcbi.1000909)
2. De Pittà M, Goldberg M, Volman V, Berry H, Ben-Jacob E (2009) Glutamate regulation of calcium and IP3 oscillating and pulsating dynamics in astrocytes. [Journal of Biological Physics 35:383–411](https://doi.org/10.1007/s10867-009-9155-y)
3. Li Y-X, Rinzel J (1994) Equations for InsP3 Receptor-mediated [Ca2+]i Oscillations Derived from a Detailed Kinetic Model: A Hodgkin-Huxley Like Formalism. [Journal of Theoretical Biology 166:461–473](https://doi.org/10.1006/jtbi.1994.1041)


