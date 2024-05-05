#!/usr/bin/env python3
#
# chisqtest-sd.py
# tests if the standard deviation of a set of numbers is different from a given value

import sys
from scipy.stats import chi2
from statistics import stdev

with open(sys.argv[1]) as f:
    lines = f.read().splitlines()
data = [float(i) for i in lines]

value = float(sys.argv[2])
n = len(data)
df = n-1
ssd = stdev(data)
chi_squared_value = ( df / (value**2)) * ssd**2

p = chi2.cdf(chi_squared_value, df = df)

alpha = 0.01

if p > alpha:
	# sample mean not significantly different from value
    exit(0)
else:
	# sample mean is significantly different from value
    exit(1)
