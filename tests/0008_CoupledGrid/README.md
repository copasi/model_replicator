# 0008_CoupledGrid

creates a grid of 3x3x3 units of the Selkov-Wolf-Heinrich model coupled through transport of Y between cells (no external compartment)

## tests

- 3D, 3x3x3 units, transport, norm noise on initial conditions
- cps file reads well
- produces no warning or error
- checks -o option creates correct filename
- checks model title is written correctly
- checks the number of expected reactions
- checks that no unit has suffix 0,0,0
- checks that one unit has suffix 3,3,3
