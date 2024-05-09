# 0004_Normal100

creates a set of 100 units with a simple binding reaction each, where Ka has gaussian noise with 20% std dev.

## tests

- 1D, 100 units, unconnected, norm noise
- cps file reads well
- produces an expected warning about parameter scan
- produces no other warning or error
- checks that 100 parameters were created
- checks that Ka parameters are distributed according to a Gaussian
- checks that Ka parameters have a mean of 1000
- checks that Ka parameters have a CV of 0.2
