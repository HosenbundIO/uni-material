k <- function(x) {
  return(x^6-2*x^3+1)
}

#curve(k, from = -2, to = 2)
newton.raphson <- function(f, a, b, tol=1e-5, n=1000) {
  require(numDeriv)
  
  x0 <- a # start
  k <- n # iterationen
  
  fa <- f(a)
  if (fa == 0.0) {
    return(a)
  }
  
  fb <- f(b)
  if (fb == 0.0) {
    return(b)
  }
  
  for (i in 1:n) {
    dx <- genD(func=f, x=x0)$D[1]
    x1 <- x0 - (f(x0) / dx)
    k[i] <- x1
    
    if (abs(x1-x0) < tol) {
      root.approx <- tail(k, n=1)
      res <- list("root approx" = root.approx, "iterationen" = k)
      return(res)
    }
    
    x0 <- x1
  }
  print("Too many iterations")
}

print(newton.raphson(k, -2, 5))
print(uniroot(k, c(1, 2))$root)

## Aufgabe 2
m <- function(x) {
  return(x^4-3*x^3+2*x^2-1)
}
x <- -10:10
y <- m(x)

#plot(x, y, type="l")
curve(m, from=1, to=3, col="blue")
abline(h=0, col="red", lty=2)
print(uniroot(m, c(2, 2.5))$root)

## Aufgabe 3
n <- function(x) {
  return(cos(x) - x)
}

curve(n, from=0, to=2, col="blue")
abline(h=0, col="red", lty=2)
print(uniroot(n, c(0.5, 1))$root)

## Aufgabe 4
f <- expression(x^2-3*x+2)
d <- D(f, "x")
d <- function(x) {
  return(2*x-3)
}
f <- function(x) {
  return(x^2-3*x+2)
}
print(uniroot(d, c(-20, 20))$root) # 1.5
curve(f, from=0, to=2)
abline(h=0, col="red", lty=2)
print(uniroot(f, c(1, 2))$root) # 1 erste Nullstelle
print(uniroot(f, c(1.5, 2))$root) # 2 zweite Nullstelle

curve(d, from=1, to=2)
abline(h=0, col="red", lty=2)

## Aufgabe 5
print("Aufgabe 5")
f <- function(x) {
  return(x^2-3*x+2)
}
print(optimize(f, c(-10, 10))) #min 1.5
print(optimize(f, c(-10, 10), maximum=TRUE)) #max 9.999

## Aufgabe 6
print("Aufgabe 6")
g <- function(x) {
  return((1/4)*x^4+2*x^3-32*x-21)
}
print(optimize(g, c(-10, 10))) ## min 1.9999
curve(g, from=1, to=5)
gx <- expression((1/4)*x^4+2*x^3-32*x-21)
print(D(gx, name="x"))
gx <- function(x) {
  return((1/4) * (4 * x^3) + 2 * (3 * x^2) - 32)
}
print(uniroot(gx, c(0, 6))$root)
curve(gx, from=1, to=3)
abline(h=0, col="red", lty=2)

print(optimize(gx,c(-6, 5), maximum=TRUE)$maximum) # -4

## Aufgabe 7
print("Aufgabe 7")
h <- function(x) {
  return(exp(x-1)-x+3)
}
print(optimize(h, c(-10, 10))) # 1
curve(h, from=0, to=2)

