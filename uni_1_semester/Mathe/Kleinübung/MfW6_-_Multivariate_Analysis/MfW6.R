library("numDeriv")
#Aufgabe 1
print("Aufgabe 1")
fxy <- expression(x^3+2*y^2+3*x*y)
print(D(fxy, name="x")) # 3 * x^2 + 3 * y
print(D(fxy, name="y")) # 2 * (2 * y) + 3 * x

# Aufgabe 2
print("Aufgabe 2")
f <- function(vec) {
  x <- vec[1]
  y <- vec[2]
  return(x^3+2*y^2+3*x*y)
}
print(grad(f, c(2, 3))) # 21, 18

## Aufgabe 3
print("Aufgabe 3")
print(D(D(fxy, name="x"), name="x"))
print(D(D(fxy, name="y"), name="y"))
print(D(D(fxy, name="x"), name="y"))

## Aufgabe 4
print(hessian(f, c(1,1)))

## Aufgabe 5
g <- expression(3*x^2*y+sin(x)*cos(y))
print(D(g, name="x"))
print(D(g, name="y"))

## Aufgabe 6
h <- function(vec) {
  x <- vec[1]
  y <- vec[2]
  return((x^2+y^3+1)/(x+y))
}
print(grad(h, c(2, 2)))

## Aufgabe 7
print(D(D(g, name="x"), name="x"))
print(D(D(g, name="y"), name="y"))
print(D(D(g, name="x"), name="y"))

## Aufgabe 8
library(cubature)
xyz <- function(vecs) {
  x <- vecs[1]
  y <- vecs[2]
  return(2*x^2+10*y-3*x+3)
}

print(adaptIntegrate(xyz, c(0,2), c(2,4)))