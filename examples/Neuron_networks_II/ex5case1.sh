#!/bin/bash

# example 5, case 1

# create network of 100 Izhikevic neurons connected in an Erdos topology with chemical synapses


sbmodelr \
 --output ex5case1.cps \
 -n network100-200.dot \
 --ode-synaptic v \
 --synapse-g 0.2 \
 --synapse-link-g \
 Izhikevich.cps \
 100
