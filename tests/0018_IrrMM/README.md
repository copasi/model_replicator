# 0018_IrrMM

creates a set of two replicate units with a simple binding reaction each, one is connected to the other through irreversible Michaelis-Menten transport of *c*.

## tests

- cps file reads well
- gv file reads well
- produces an expected warning about parameter scan
- produces no other warning or error
- check that transport reaction was created
- check that the Henri-Michaelis-Menten rate law is used
- check that the two rate constants were created
