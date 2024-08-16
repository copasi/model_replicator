#!/bin/bash

# example 4, case 3

# create a 3-neuron network where 1 feeds into 2, 2 into 3, and 1 also into 3


../../sbmodelr \
 --output ex4case3.cps \
 -n ff3.dot \
 --ode-synaptic V \
 --synapse-g 0.08 \
 --cn 0 uni \
 RSA_neuron.cps \
 3
