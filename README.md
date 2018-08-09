# implicint
Taking (numerical) integral over a function's implicit inverse - Matlab implementation

This function is to take integral over a function which is monotonic over the interval of interest but its inverse has no analytical solution (or the solution is too messy is not worth finding).
Legendre-Gauss Quadrature Weights and Nodes are used to estimate the integral numerically. It is possible to use a weighting function, for example when this function is weighted by a distribution function such as Normal, Log Normal, etc. To avoid such weights use @(x) 1 as weighting function.

To find L-G quadrature nodes you need to "lgwt.m" function written by Greg von Winckel downloaded from:
https://www.mathworks.com/matlabcentral/fileexchange/4540-legendre-gauss-quadrature-weights-and-nodes

Note: I have written this as a subroutine (and many more) because I frequently use it in part of my own research. Use this at your own risk.
