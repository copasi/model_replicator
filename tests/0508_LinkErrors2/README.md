# 0508_LinkErrors2

tests errors related with creating links

## tests

- 1D 2D, network, grid, transport, synaptic
- appropriate error for compartment ode when ignore_compartments is set
- appropriate error for diffusive link on compartment that is not an ode
- appropriate error for synaptic connection on a compartment
- appropriate warning for diffusive connection between the same compartment
- appropriate error for diffusive link on a non-existent entity
- appropriate error for regulatory link without network
- appropriate error for regulatory link on 2D grid
- appropriate warninggit  for regulatory connection without --ignore_compartments
- appropriate error for regulatory connection with inexistent species
