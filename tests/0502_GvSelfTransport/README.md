# 0502_GvSelfTransport

tries to create a set of 2 units of the Selkov-Wolf-Heinrich model where the graphviz file has a self connection

## tests

- 1D, network, directed
- file reads well
- gv file reads well
- issues a warning that the slef connection will be ignored
- produces no other warning or error (ignores bad node)
- tests -o option to name output file
- checks that the self connection was ignored
