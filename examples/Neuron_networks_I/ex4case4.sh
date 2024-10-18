#!/bin/bash

# example 4, case 4
# spinal central pattern generator

sbmodelr \
 --output ex4case4.cps \
 -n scpg.dot \
 --ode-synaptic V \
 --synapse-g 0.08 \
 --cn 0 uni \
 RSA_neuron.cps \
 6
