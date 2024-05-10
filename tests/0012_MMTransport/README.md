# 0012_MMTransport

creates a grid of 2x2 units of the IrreversibleChainReaction model with transport of species C with Michaelis-Menten kinetics

## tests

- 2D, 2x2 units, MM transport, no noise
- cps file reads well
- produces no warning or error
- checks -o option creates correct filename
- checks that 4 transport reactions exist
- checks the number of expected reactions
- checks the kinetic rate law for MM Transport is correct
- checks that no unit has suffix 0,0
- checks that one unit has suffix 2,2
- checks that parameters for MM transport are defined
