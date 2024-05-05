#!/usr/bin/env python3
#
# ttest-mean.py
# tests if a the mean of a set of numbers is different from a given value

import sys
from scipy.stats import ttest_1samp

with open(sys.argv[1]) as f:
    lines = f.read().splitlines()
data = [float(i) for i in lines]

value = float(sys.argv[2])

stat, p = ttest_1samp(data, popmean=value)

alpha = 0.01

if p > alpha:
	# sample mean not significantly different from value
    exit(0)
else:
	# sample mean is significantly different from value
    exit(1)
