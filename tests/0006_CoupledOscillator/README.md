# 0006_CoupledOscillator

creates a set of 2 units of the Selkov-Wolf-Heinrich model of coupled oscillating cells with an external compartment

## tests

- 1D, 2 units, medium, transport to medium, no noise
- cps file reads well
- produces no warning or error
- tests -o option to name output file
- checks that transport rate constant is set to correct value
- checks that the model is run by CopasiSE without errors
- checks that the output contains all the species
- checks that the last time point is in the output
