# Aufgabe 1d)
dbinom(7, 10, 0.25) # [1] 0.003089905
pbinom(3, 10, 0.25) # [1] 0.7758751
1 - pbinom(5, 10, 0.25) # [1] 0.01972771
pbinom(5, 10, 0.25) - pbinom(2, 10, 0.25) # [1] 0.4546795

# Aufgabe 2d)
1 - ppois(1, 2) # [1] 0.5939942
ppois(0, 1.8) # [1] 0.1652989

# Aufgabe 3c)
source("~/Documents/uni_material/uni_2_semester/statistik/Datensätze/R-Sammeldatei.R")
hist(verteilung1, freq = FALSE)
x <- seq(1, 15, length = 100)
#   [1]  1.000000  1.141414  1.282828  1.424242  1.565657  1.707071  1.848485  1.989899  2.131313  2.272727  2.414141  2.555556  2.696970  2.838384  2.979798  3.121212  3.262626  3.404040
#  [19]  3.545455  3.686869  3.828283  3.969697  4.111111  4.252525  4.393939  4.535354  4.676768  4.818182  4.959596  5.101010  5.242424  5.383838  5.525253  5.666667  5.808081  5.949495
#  [37]  6.090909  6.232323  6.373737  6.515152  6.656566  6.797980  6.939394  7.080808  7.222222  7.363636  7.505051  7.646465  7.787879  7.929293  8.070707  8.212121  8.353535  8.494949
#  [55]  8.636364  8.777778  8.919192  9.060606  9.202020  9.343434  9.484848  9.626263  9.767677  9.909091 10.050505 10.191919 10.333333 10.474747 10.616162 10.757576 10.898990 11.040404
#  [73] 11.181818 11.323232 11.464646 11.606061 11.747475 11.888889 12.030303 12.171717 12.313131 12.454545 12.595960 12.737374 12.878788 13.020202 13.161616 13.303030 13.444444 13.585859
#  [91] 13.727273 13.868687 14.010101 14.151515 14.292929 14.434343 14.575758 14.717172 14.858586 15.000000
# curve(dexp(x, 1 / 3), add = TRUE)
lines(x, dexp(x, 1 / 3), col = "blue", lwd = 2)

# Aufgabe 3d)
# P(Y > 4) = 1 - P(Y < 4)
1 - pexp(4, 1 / 3) # [1] 0.2635971

# Aufgabe 3e)
arrows(x0 = 4, y0 = 0, x1 = 15, y1 = 0, lwd = 2, col = "green")
a <- seq(4, 15, length = 100)
segments(x0 = a, y0 = 0, x1 = a, y1 = dexp(a, 1 / 3), col = "red")

# Aufgabe 3f)
predict_thunder <- function(y, lambda) {
  res <- 1 - pexp(y, lambda)
  return(res)
}

# Aufgabe 3g)
predict_thunder(1, 1 / 3) # [1] 0.7165313
predict_thunder(6, 1 / 3) # [1] 0.1353353

# Aufgabe 3h)
# P(1 <= Y <= 6) = P(Y <= 6) - P(Y <= 1)
pexp(6, 1 / 3) - pexp(1, 1 / 3) # [1] 0.581196

# Aufgabe 4b)
# P(X > mikro + 2omega) --> P(X > 175 + 2 * 9.5)
1 - pnorm(194, 175, 9.5) # [1] 0.02275013

# Aufgabe 4c)
rnorm(50, 175, 9.5)
#  [1] 172.6141 165.8036 173.9789 179.5073 181.7925 189.9288 180.2536 173.4351 180.8058 159.0827 184.4687 174.8571 191.5050 171.9549 187.7456 184.5555 165.8485 164.8812 165.4784 171.3392
# [21] 180.9363 175.3116 175.4737 172.4801 164.6708 170.1102 182.8463 182.9547 185.1618 175.4967 172.5270 166.6733 190.7239 165.8702 183.0302 177.9450 177.5576 160.9779 169.7347 160.3888
# [41] 152.3271 163.5446 154.5352 180.0472 189.8314 166.7715 172.8672 173.6327 177.8093 150.5209

# Aufgabe 4d)
# Standardnormalverteilung mit Parametern 0 und 1

# Aufgabe 5a)
Zuckerrohr <- read.csv("~/Documents/uni_material/uni_2_semester/statistik/Datensätze/Zuckerrohr.csv")
head(Zuckerrohr, 8)
#   Wasser Kalorien
# 1    6.3   18.201
# 2    6.3   17.976
# 3    7.3   18.235
# 4   11.3   17.410
# 5   12.2   16.857
# 6   12.2   16.882
# 7   13.7   16.581
# 8   15.5   16.398

# Aufgabe 5b)
colMeans(Zuckerrohr)
#   Wasser Kalorien
# 30.91471 13.42347
cov(Zuckerrohr)
#             Wasser  Kalorien
# Wasser   341.43463 -65.27967
# Kalorien -65.27967  12.58897
cor(Zuckerrohr)
#              Wasser   Kalorien
# Wasser    1.0000000 -0.9957012
# Kalorien -0.9957012  1.0000000

# Aufgabe 5c)
mu_x <- mean(Zuckerrohr$Wasser) # [1] 30.91471
mu_y <- mean(Zuckerrohr$Kalorien) # [1] 13.42347

var_x <- var(Zuckerrohr$Wasser) # [1] 341.4346
var_y <- var(Zuckerrohr$Kalorien) # [1] 12.58897

# Aufgabe 5d)
kalorien <- seq(0, 25, length = 1000)
plot(kalorien, dnorm(kalorien, mu_y, sqrt(var_y)), type = "l", xlab = "y", ylab = "f(y)", main = "Randverteilung von Y", ylim = c(0, 0.12), xlim = c(0, 25))

# Aufgabe 5e)
# P(12 < Y < 15)
pnorm(15, mu_y, sqrt(var_y)) - pnorm(12, mu_y, sqrt(var_y)) # [1] 0.3274595

# Aufgabe 5f)
cov_xy <- cov(Zuckerrohr)[1, 2]
cor_koeff <- cov_xy / sqrt(var_x * var_y)
bed_muy <- mu_y + (cor_koeff * (sqrt(var_y / var_x))) * (10 - mu_x)

# Aufgabe 5g)
kalorien <- seq(0, 25, by = 0.001)
plot(kalorien, dnorm(kalorien, bed_muy, sqrt(bed_vary)),
  type = "l", xlab = "y", ylab = "f(y)",
  xaxs = "i", yaxs = "i", ylim = c(0, 1.4), xlim = c(0, 25), lwd = 2, col = "blue",
  main = "bedingte Randverteilung von Y für X = 10"
)
