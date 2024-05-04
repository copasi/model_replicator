#!/usr/bin/env python3
#
# shapiro-wilk.py
# tests if a set of numbers seems to be normal

import sys
from scipy.stats import shapiro

with open(sys.argv[1]) as f:
    lines = f.read().splitlines()
data = [float(i) for i in lines]

stat, p = shapiro(data)

alpha = 0.05

if p > alpha:
	# looks like a normal distribution, return 0
    exit(0)
else:
	# doesn't look like a normal distribution, return 1
    exit(1)
