# Blind-deconvolution

Blind Deconvolution is a proces which unblurs an image using an unknown blur kernel. Much of my work relates to this [paper](https://cs.nyu.edu/~fergus/papers/deblur_fergus.pdf) by Rob Fergus. To extract the sharpened image, we first need to compute the blur kernel. The latter is estimated using Maximum a posteriori (MAP) algorithm, while assuming an exponential 
