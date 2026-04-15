########## Aufgabe 10 ###########
## Aufgabe 10 a)
setwd(path.expand("~/Desktop/Uni/Mathe/Klausurinfos_und_Probeklausuren/"))
## Aufgabe 10 b)
Kreiszahl <- pi
## Aufgabe 10 c)
f2 <- function() {
  return(Kreiszahl^2-2^5)
}
cat("Der Funktionswert f(2) ist", f2(), "\n")

########## Aufgabe 11 ############
## Aufgabe 11 a)
M <- matrix(c(1,3,2,2,-1,3,-1,2,1), ncol=3, nrow=3)
## Aufgabe 11 b)
v <- c(3,0,7)
## Aufgabe 11 c)
ergebnis <- solve(M, v)
print(ergebnis)
cat("Die gesuchten Werte sind: a=", round(ergebnis[1], 0), " b=", 
    round(ergebnis[2], 0), " c=", round(ergebnis[3], 0), "\n", sep="")

########### Aufgabe 12 ###########
## Aufgabe 12 a)
fun <- function(x) {
  return(exp(-x^2))
}
## Aufgabe 12 b)
pdf("Test.pdf")
curve(fun, main="Matr.Nr. XX", xlab="x-Wert",
     ylab="Funktionswert", from=0, to=7)
dev.off()
## Aufgabe 12 c)

## Aufgabe 12 d)
integral <- integrate(fun, lower=0, upper=7)
A <- integral$value
print(A)