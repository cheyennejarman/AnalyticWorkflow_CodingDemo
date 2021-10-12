# select source on save - ensures that all code saved runs line by line

# Analytic Workflows: coding demo
# 
# additional info about the  code that could be useful for collaborators or
# future self ...
# Generate some data, compute linear regression, and produces a figure


# Clear workspace and close all grahics devices ---------------------------
# section headers created using cmd+shift+r
# recommend starting each script with these commands
rm(list = ls())
graphics.off()


# Generate some data ------------------------------------------------------

n <- 100
m <- 2.2
b <- 1.1

x <- rnorm(n=100, mean=0, sd=1) # independent variable
noise <- rnorm(n=100, mean=0, sd=1)
y <- m * x + b + noise

#plot(x, y) # debug plot


# Do linear regression ----------------------------------------------------

fit <- glm(y ~ x)

# Plot the results --------------------------------------------------------
plot(x, y)
abline(fit, col = "red")

