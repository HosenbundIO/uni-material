## Aufgabe 1
a <- 2
b <- 10
print(a**2)
print(b**a)
print(b**2+1)
print(b**(2+1))
print(2**(a+b))
print((b-7)**a)
print(a**1.2)
print(a**(b/2))
print(b**-1)

## Aufgabe 2
print(sqrt(1764))

## Aufgabe 3
print(log(25))

## Aufgabe 4
print(log(10))
print(log10(2))
# print(log(-1, base=3)) NaN
print(16, base=4)

## Aufgabe 5

f <- function(wasserverbrauch) {
  kaltmiete <- 350
  wk_pro_liter <- 12
  return (kaltmiete + wk_pro_liter * wasserverbrauch)
}

print(f(20))

## Aufgabe 6
Preis <- function(anzahl_k, anzahl_b) {
  preis_k <- 1.7
  preis_b <- 0.8
  return (anzahl_b*preis_b + anzahl_k*preis_k)
}

print(Preis(2, 3))

## Aufgabe 7
Binomische_Formel1 <- function(a, b) {
  return(a**2 + 2*a*b + b**2)
}

Binomische_Formel2 <- function(a, b) {
  return(a**2 - 2*a*b + b**2)
}

Binomische_Formel3 <- function(a, b) {
  return(a**2-b**2)
}


