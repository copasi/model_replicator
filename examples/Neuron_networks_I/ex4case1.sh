#!/bin/bash

# example 4, case 1

# create a simple 2 neuron network where 1 feeds into 2


sbmodelr \
 --output ex4case1.cps \
 -n ff2.dot \
 --ode-synaptic V \
 --synapse-g 0.08 \
 RSA_neuron.cps \
 2
