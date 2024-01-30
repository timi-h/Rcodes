# Set appropriate seconds and wattages of the given scenario. Insert the seconds of the original duration of the scenario before the extrapolation.
seconds <- c(1:XX)
# Insert wattages so that values are separated with commas and spaces (e.g. 1.23, 4.56, 7.89)
wattages <- c('Insert wattages here')

# Perform cubic regression to form a function for the time,wattage points.
fit <- lm(wattages ~ poly(seconds, 3, raw = TRUE))

# Define how many seconds is wanted to be extrapolated. The starting time (abc) should be the first second after the original duration of the scenario and the last second should be the last second of the extrapolated part (xyz).
new_data <- data.frame(seconds = c('abc:xyz'))

# Predict/extrapolate values
predicted_values <- predict(fit, newdata = new_data)

# Display the results
print(predicted_values)
