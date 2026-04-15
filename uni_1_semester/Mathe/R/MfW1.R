library("numDeriv")
5.9
# 5,9

zahl1 <- 1
z2 <- 2
b1 <- "b"

zahl1 + z2
# zahl1 + b1 = non numeric

z3 <- toString(zahl1)
z4 <- toString(z2)
# z3 + z4 = non numeric

d <- c(1, 2, 3, 4)
n <- c("Hannah", "Eva", "Paul")

e <- c(2, 3, 4, 5)
e + d
# e / d
e - d
e * d

a <- seq(1, 20)
b <- seq(from=10, to=4)
c <- seq(-8, 16, by=4)
d2 <- seq(0, 19, length.out=5)

a4 <- 21
b4 <- 2
a4 + b4
a4 - b4
a4 * b4
a4 / b4

a5 <- 10.5
b5 <- 8
3*a5 + b5
b5 + 3*a5

# Aufgrund des Kommutativgesetzes der Addition ist die Reihenfolge der Summanden egal und die Multiplikation wird aufgrund der Priorität (Punkt vor Strich als erstes berechnet)
