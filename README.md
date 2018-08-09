# implicint
Taking (numerical) integral over an functions implicit inverse - Matlab implementation

This function is to take integral over a function which is monotonic over the interval of intrest but its inverse has not analetycal solution.
Legendre-Gauss Quadrature Weights and Nodes are used to estimate the integral numerically. It is possible to use a weighting function, for exmaple when this function is weighted by a distribution function such as Normal, Log Normal, etc. To avoid such weights use @(x) 1 as weighting function.

To find L-G quadrature nodes you need to "lgwt.m" function written by Greg von Winckel dowloaded from:
https://www.mathworks.com/matlabcentral/fileexchange/4540-legendre-gauss-quadrature-weights-and-nodes

Note: I have writtent this as a subroutine (and many more) because I frequenctly use it in part of my own research. Use this at your own risk.