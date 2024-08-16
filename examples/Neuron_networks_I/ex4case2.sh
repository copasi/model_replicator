#!/bin/bash

# example 4, case 2

# create a simple 2 neuron network where 1 feeds into 2 and 2 feedsback to 1


../../sbmodelr \
 --output ex4case2.cps \
 -n fb2.dot \
 --ode-synaptic V \
 --synapse-g 0.08 \
 --cn 0 uni \
 RSA_neuron.cps \
 2
