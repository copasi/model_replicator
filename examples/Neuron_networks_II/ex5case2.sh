#!/bin/bash

# example 5, case 2

# create network of 100 Izhikevic neurons connected in a scale free topology with chemical synapses
# the network topology is supplied in the file network100-200_sf.dot

../../sbmodelr \
 --output ex5case2.cps \
 -n network100-200_sf.dot \
 --ode-synaptic v \
 --synapse-g 0.2 \
 --synapse-link-g \
 Izhikevich.cps \
 100
