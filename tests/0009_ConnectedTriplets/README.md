# 0009_ConnectedTriplets

three replicates of BindingKa.cps fully connected by transport of species *b* using a graphviz file

## tests

- 1D, 3 units, network, transport
- cps file reads well
- network file reads well (.dot extension)
- network file has connection from one unit to a set
- produces an expected warning about parameter scan
- checks that there are exactly 3 transport reactions
- checks that existing assignments were processed correctly
