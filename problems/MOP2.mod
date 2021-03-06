###############################################################################
#
#   As described by Huband et al. in "A review of multiobjective test problems
#   and a scalable test problem toolkit", IEEE Transactions on Evolutionary 
#   Computing 10(5): 477-506, 2006.
#
#   Example MOP2, Van Valedhuizen's test suit.
#
#   This file is part of a collection of problems developed for
#   derivative-free multiobjective optimization in
#   A. L. Cust�dio, J. F. A. Madeira, A. I. F. Vaz, and L. N. Vicente,
#   Direct Multisearch for Multiobjective Optimization, 2010.
#
#   Written by the authors in June 1, 2010.
#
###############################################################################

# Number of variables
param n := 4; #??
# Define objective function variables
var x{1..n} >= -4, <=4;


# The objective functions
minimize fobj1:
    1-exp(-sum {i in 1..n} (x[i]-1/sqrt(n))^2);

minimize fobj2:
    1-exp(-sum {i in 1..n} (x[i]+1/sqrt(n))^2);

