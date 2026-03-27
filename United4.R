# Generate time series data
set.seed(123)
ts_data <- ts(rnorm(20))

# Moving average (window size = 3)
moving_avg <- filter(ts_data, rep(1/3, 3), sides=2)

# Plot original data
plot(ts_data, type="o", col="blue",
     main="Time Series with Moving Average",
     ylab="Value", xlab="Time")

# Plot moving average
lines(moving_avg, col="red", lwd=2)

legend("topleft",
       legend=c("Original Data","Moving Average"),
       col=c("blue","red"),
       lwd=2)