# Aufgabe 2a)
tx <- c(-2, -1, 0, 1, 2, 3)
# px <- c((1 / 6), (1 / 6), (1 / 6), (1 / 6), (1 / 6), (1 / 6)) erste Variante
px <- rep(1 / 6, 6) # cleaner
plot(tx, px, type = "h")

sfun <- stepfun(tx, c(0, cumsum(px)), f = 0)

plot(
  sfun,
  pch = 16,
  verticals = FALSE,
  main = "Verteilungsfunktion für x",
  xlab = "X",
  ylab = "Kumulierte Wahrscheinlichkeit"
)

# Aufgabe 3b)
rnorm(50, 175, 9.5)
qnorm(pnorm(0.3))
pnorm(qnorm(0.6))
