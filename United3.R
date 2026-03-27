# Generate normal random values
set.seed(123)
x <- rnorm(100)

# Histogram with density scale
hist(x, probability=TRUE,
     col="lightgreen",
     main="Normal Distribution with Density Curve",
     xlab="Values")

# Density estimation
d <- density(x)

# Plot density curve
lines(d, col="blue", lwd=2)