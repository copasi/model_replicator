# 0010_SBML2GeneNetwork

two replicates of BIOMD0000000539_url.xml fully connected by transport of species *B* using a graphviz file

## tests

- 1D, 2 units, network, transport, noise uni on initial concentration
- sbml l3v1 file reads well
- network file reads well
- sbml file was written
- produces no warnings or errors
- checks that correct number of rate laws are written
- checks that a specifc rate law exists in two instances
- checks that the transport reaction exists
