# 0022_GVMultilineComment

creates a set of four replicate units with a simple binding reaction each using a network file containing a multi-line comment.

## tests

- cps file reads well
- gv file reads well
- produces an expected warning about parameter scan
- produces no other warning or error
- four transport reactions are created
- a reaction between units 3 and 4 is not created (it is inside a comment in the network file)
