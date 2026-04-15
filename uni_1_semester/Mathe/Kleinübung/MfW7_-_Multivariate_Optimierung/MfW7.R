# Aufgabe 1
h <- function(vec) {
  a <- vec[1]
  b <- vec[2]
  return(exp(a^2)+b^2)
}

print(nlm(h, c(2, 4))) # min 1

# Aufgabe 2
f <- function(vec) {
  x <- vec[1]
  y <- vec[2]
  return(-x^2-y^2+10*x+20*y)
}


f_negativ <- function(vec) {
  x <- vec[1]
  y <- vec[2]
  return(-(-x^2-y^2+10*x+20*y))
}
print(nlm(f_negativ, c(-5, 5))) # min -125 --> max 125
print(nlm(f, c(-5, 5))) # min -1892753874 --> lokales min

# Aufgabe 3
g <- function(vec) {
  x <- vec[1]
  y <- vec[2]
  z <- vec[3]
  return(3*x^2+0.5*y^2-z^2-12*x)
}

g_neg <- function(vec) {
  x <- vec[1]
  y <- vec[2]
  z <- vec[3]
  return(-(3*x^2+0.5*y^2-z^2-12*x))
}

print(nlm(g_neg, c(0, 1))) # kein max
print(nlm(g, c(0, 1))) # kein min

## Aufgabe 4
library(Rsolnp)

i <- function(vec) {
  x <- vec[1]
  y <- vec[2]
  return(x^2+y^2)
}

NB <- function(vec) {
  x <- vec[1]
  y <- vec[2]
  return(x+y)
}
print(solnp(c(1, 2), fun=i, eqfun=NB, eqB=4))

## Aufgabe 5
j <- function(vec) {
  x <- vec[1]
  y <- vec[2]
  z <- vec[3]
  return(-(-x^2+y-z)) # Funktion positiv transformieren 
}

NB2 <- function(vec) {
  x <- vec[1]
  y <- vec[2]
  z <- vec[3]
  t = x + y
  k = x - z
  return(c(t, k))
}

print(solnp(c(1, 2, 3), fun=j, eqfun=NB2, eqB=c(0, -2)))
