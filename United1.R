# Generate 100 random values from Uniform Distribution
set.seed(123)
x <- runif(100)

# Compute cumulative sum
cs <- cumsum(x)

# Plot both on same graph
plot(x, type="l", col="blue", lwd=2,
     ylab="Value", xlab="Index",
     main="Uniform Random Values and Cumulative Sum")

lines(cs, col="red", lwd=2)

legend("topleft",
       legend=c("Original Data","Cumulative Sum"),
       col=c("blue","red"),
       lwd=2)