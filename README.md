 I developed to compute Taylor series in R. Here's how the program works:

The program takes two inputs: a function and a point around which to expand the series. It then calculates the coefficients of the Taylor series using the deriv function in R, which takes the function, the order of the derivative, and the point at which to evaluate the derivative as inputs.

The program then constructs the Taylor series using a loop that iterates over the number of terms specified by the user. For each term, the program calculates the value of the coefficient using the deriv function and the value of the term using the power rule of differentiation.

The program returns the Taylor series as an expression, which can be evaluated at any point using the eval function in R.
