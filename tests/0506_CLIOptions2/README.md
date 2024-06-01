# 0506_CLIOptions2

tests various invalid command line options

## tests

- 1D, network, grn
- appropriate error for network with dimension higher than 1
- appropriate error for network file having more units than specified on cli
- appropriate error for --grn-a values outside of bounds
- appropriate error for --grn-h values outside of bounds
- appropriate warning message when -add-medium is issued without transported species
