# Tests for model replicator

This folder contains a variety of functional tests for *sbmodelr* that should cover all of its possible functions.

## Structure

Each test resides in its own folder. Folders have names with format /^\d{4}_.*$/, the numeral being assigned sequentially, followed by a tag. A folder *sources* contains original files (SBML, COPASI and GraphViz files).
 - a brief *README.md* describing the functionality that is being tested
 - a *run.sh* script that runs the test and that carries out any needed comparisons so that it announces **pass** or **errors**
 - a file *target_output* containing the expected *stdout* output from a correct execution (ideally this should be a read-only file)
Note that the test may execute a series of calls to *sbmodelr*

## Functionality

Tests should focus on:

 **1. positive tests**

 - 1D, 2D and 3D architectures
 - adding a medium unit
 - sets with and without connections
 - connections on 1D architectures with specified networks
 - unidirectional and bidirectional connections in specified networks
 - connections on reaction-dependent species with mass action or Michaelis-Menten kinetics
 - connections on species ODEs with diffusive and synaptic coupling
 - connections on global quantity ODEs with diffusive and synaptic coupling
 - connections on compartment ODEs with diffusive coupling
 - adding noise, uniform and Gaussian, to specific parameters
 - adding noise, uniform and Gaussian, to connection parameters
 - combinations of all the above

 **2. negative tests** (should generate errors)

 - synaptic coupling in compartment connections
 - invalid GraphViz files
 - parameter noise that results in negative values that should be non-negative
