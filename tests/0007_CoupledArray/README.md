# 0007_CoupledArray

creates an array of 8x8 units of the Selkov-Wolf-Heinrich model coupled through transport of Y between cells (no external compartment)

## tests

- 2D, 8x8 units, transport, norm noise on initial conditions
- cps file reads well
- produces no warning or error
- checks -o option creates correct filename
- checks that initial conditions are created with normal distribution
- checks that initial conditions are created with correct mean
- checks that initial conditions are created with correct CV
