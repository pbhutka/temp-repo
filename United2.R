# Generate binomial data
set.seed(123)
x <- rbinom(100, size=10, prob=0.5)

# Histogram (probability scale)
hist(x, probability=TRUE,
     col="lightblue",
     main="Binomial Distribution",
     xlab="Values")

# Theoretical PMF
k <- 0:10
pmf <- dbinom(k, size=10, prob=0.5)

# Overlay PMF
points(k, pmf, col="red", pch=19)
lines(k, pmf, col="red", lwd=2)