library(hal)
library(testthat)

context("Basic test")

# Number of covariates to use
d <- 3

# Sample size
n <- 60

# Simulate some data, all continuous covariates.
set.seed(1)
x = data.frame(matrix(rnorm(n * d), ncol = d))
y = rnorm(n, rowSums(x))

# Fit hal
hal.fit <- hal(
    Y = y,
    # Restrict to d covariates for testing purposes.
    X = x,
    verbose = TRUE
)

# Review timing
hal.fit$times
