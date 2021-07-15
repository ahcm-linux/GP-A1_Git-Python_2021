# code in R

x <- c(0, 2, 1)
y <- c(0, 0, sqrt(3))

rx <- 1.5
ry <- 0.6

plot(x, y, type = "p", cex = 1.5, pch = 20, col = "red")
points(rx, ry, cex = 1.5, pch = 20, col = "red")

n <- 3000
for (i in 1:n) {
  selection <- sample(seq_len(length(x)), 1)
  rx <- (rx + x[selection]) / 2
  ry <- (ry + y[selection]) / 2
  points(rx, ry, cex = 0.5, pch = 20)
  #Sys.sleep(0.005)
}
