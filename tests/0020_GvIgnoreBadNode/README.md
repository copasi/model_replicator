# 0020_GvIgnoreBadNode

creates a set of 2 units of the BindingKa.cps model where the graphviz file has an invalid node but one valid edge

## tests

- 1D, network, directed
- file reads well
- produces an expected warning about parameter scan
- produces no other warning or error (ignores bad node)
- checks that the valid edge generates a transport reaction
- checks that there is only one transport reaction
