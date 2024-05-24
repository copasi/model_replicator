# 0025_CompartmentArray

set of 27 units of model with compartment ODE connected by diffusive connections of *blob* 3x3x3

## tests

- 3D, 27 units, diffusive connection compartment ODE
- checks that coupling constant exists and is set to proper value
- checks that there are 27 compartment ODEs
- checks that the ode for blob_2,2,2 (the center unit) has 6 diffusive terms
- checks that the blob_i,j,k_0 have different values
- validate the model with CopasiSE
