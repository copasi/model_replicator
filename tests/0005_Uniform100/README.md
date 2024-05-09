# 0005_Uniform100

creates a set of 100 units with a simple binding reaction each, where Ka has uniform noise within +/-20%.

## tests

- 1D, 100 units, unconnected, uni noise
- cps file reads well
- produces an expected warning about parameter scan
- produces no other warning or error
- checks that 100 parameters were created
- checks that Ka parameters are above 800
- checks that Ka parameters are below 1200
