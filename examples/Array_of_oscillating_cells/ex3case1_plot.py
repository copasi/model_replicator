import matplotlib.pyplot as plt
import matplotlib as mpl
import numpy as np

# load data
data = np.genfromtxt(fname="ex3case1_data.tsv", delimiter="\t", skip_header=21, usecols=range(1,2402)).reshape((49,49))

# figure dimensions
png_width = 800
png_height = 600
png_dpi = 100

# plot the data
fig, ax = plt.subplots(figsize=(png_width / png_dpi, png_height / png_dpi))
im = ax.imshow(data, cmap=mpl.colormaps['jet'], origin='lower',  vmin=0, vmax=50)

# add a colorbar
cb = fig.colorbar(im, ax=ax,ticks=[0,10,20,30,40,50])

# save
plt.savefig("ex3case1.png", dpi=png_dpi)
