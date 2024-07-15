import matplotlib.pyplot as plt
import matplotlib as mpl
import numpy as np

# load data
data = np.genfromtxt(fname="ex3case2_data.tsv", delimiter="\t", skip_header=1, usecols=range(1,49))

# figure dimensions
png_width = 500
png_height = 500
png_dpi = 100

# plot the data
fig, ax = plt.subplots(figsize=(png_width / png_dpi, png_height / png_dpi))
im = ax.pcolor(data, cmap='Greys', vmin=0, vmax=60)
#im = ax.imshow(data, cmap=mpl.colormaps['Greys'], origin='lower',  vmin=0, vmax=60)

# add labels
y = np.arange(0,201,1)
ny = y.shape[0]
no_labels = 6
step_y = int(ny/(no_labels - 1))
y_positions = np.arange(0,ny,step_y)
y_labels = np.arange(700,820,20)
plt.yticks(y_positions, y_labels)
plt.ylabel("time")

# add a colorbar
cb = fig.colorbar(im, ax=ax,ticks=[0,20,40,60])

# save
plt.savefig("ex3case2.png", dpi=png_dpi)
