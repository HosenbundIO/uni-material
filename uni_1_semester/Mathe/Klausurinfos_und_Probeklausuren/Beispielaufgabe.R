M <- matrix(c(3,2, 2,0), nrow = 2, ncol = 2)
x1 <- c(1, -2)
print(sum(diag(M)))

plot(x1[1], x1[2], type = "n", xlim = c(-5,5), ylim=c(-5,5),
     xlab = "x-Achse", ylab = "y-Achse")
abline(h=0)
abline(v=0)
abline(v=1, col="red")
abline(h=-2, col="red")
arrows(0,0,x1[1],x1[2],0.15,10)