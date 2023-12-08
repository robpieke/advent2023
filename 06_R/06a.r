data <- read.table("input.txt", row.names = 1)
t <- data["Time:",]
d <- data["Distance:",] + 0.5

det <- sqrt(t*t - 4*d)
h1 <- floor((t + det) / 2)
h2 <- ceiling((t - det) / 2)
n <- h1 - h2 + 1

print(prod(n))
