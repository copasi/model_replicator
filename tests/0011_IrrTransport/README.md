# 0011_IrrTransport

creates a set of 2 units of the Selkov-Wolf-Heinrich model of coupled oscillating cells, where unit 1 transports X to unit 2 (irreversibly)

## tests

- 1D, 2 units, irreversible transport, no noise
- cps file reads well
- gv file reads well (undirected graph)
- produces no warning or error
- checks that transport reaction is irreversible
