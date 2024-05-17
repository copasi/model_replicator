# 0021_TwinsIgnoreCompartment

creates a set of two exact replicate units with a simple binding reaction each, ignoring making new compartments.

## tests

- cps file reads well
- gv file reads well
- produces an expected warning about parameter scan
- produces no other warning or error
- no new compartments were created
- original compartments are still in the model
- all species are in the original compartments
- transport reaction between the two units exists
