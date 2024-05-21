# 0503_GvIssues

tests various graphviz network files that should raise warnings or errors

## tests

- 1D, network, transport
- appropriate warning for an empty network file
- appropriate warning for a network file without edges
- appropriate warning for test a network file with repeated edges
- ensure that repeated edges are added exactly once to model
- appropriate warning for a network file with non-numeric nodes
