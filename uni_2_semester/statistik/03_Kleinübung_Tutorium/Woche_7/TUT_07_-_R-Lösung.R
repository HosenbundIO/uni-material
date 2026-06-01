### Blatt 7 ###
#Aufgabe 1 D)
dbinom(7,10,0.25)
pbinom(3,10,0.25)
1-pbinom(5,10,0.25)
pbinom(5,10,0.25)-pbinom(2,10,0.25)


#Aufgabe 2 D)
1-ppois(1,2)
dpois(0, 1.8)

#Aufgabe 3
hist(verteilung1, freq = F)
x <- seq(0, 15, length=100)
lines(x, dexp(x,1/3), col="blue", lwd=2)
#d
1-pexp(4, 1/3)
#e
arrows(x0 = 4, y0 = 0, x1 = 15, y1 = 0, lwd = 2, col = "green")
a <- seq(4, 15, length=70)
segments(x0 = a, y0 = 0, x1 = a, y1 = dexp(a,1/3), col="red")


predict_thunder <- function(y,lambda) {
  res <- 1 - pexp(y,lambda)
  return(res)
}

predict_thunder(6,1/3)
# Aufgabe 4
# a)
Zuckerrohr <- read.csv("Zuckerrohr.csv")
head(Zuckerrohr, 8)

# b)
# Erwartungswert:
colMeans(Zuckerrohr)

# Varianz, Kovarianz
cov(Zuckerrohr) #gibt die unverzerrten Werte wieder

# Korrelationskoeffizient:
cor(Zuckerrohr)


# Geschätzte Parameter der Randverteilungen:
# Erwartungswert:
mu_x <- mean(Zuckerrohr$Wasser)
mu_y <- mean(Zuckerrohr$Kalorien)

# Varianz:
var_x <- var(Zuckerrohr$Wasser)
var_y <- var(Zuckerrohr$Kalorien)

# Kovarianz
cov_xy <- cov(Zuckerrohr)[1,2]

# Korrelationskoeffizient
cor_koeff <- cov_xy/sqrt(var_x*var_y)
#oder
cov_m <- cov(Zuckerrohr)
cov_m[1,2]/(sqrt(cov_m[1,1]*cov_m[2,2]))



# d)
# Kalorienwerte festlegen an denen die Dichtefunktion evaluiert werden soll
kalorien <- seq(0,25, length = 1000)
plot(kalorien, dnorm(kalorien, mu_y, sqrt(var_y)), type = "l", xlab = "y", ylab = "f(y)",
     xaxs = "i", yaxs = "i", ylim = c(0, 0.12), xlim = c(0, 25), lwd = 2, col = "red",
     main = "Randverteilung von Y")

# Schauen Sie sich beispielsweise in der Help-Funktion an,
# was "xaxs="i" und "xlim=x(0,25)" bewirkt

#e) Kaloriengehalt zwischen 12 und 15
# P(12 < Y < 15)
# = F(15) - F(12)

pnorm(15, mu_y, sqrt(var_y)) - pnorm(12, mu_y, sqrt(var_y))

#f)
#bedingter Erwartungswert: E(Y|X=10)
bed_muy <- mu_y + (cor_koeff*(sqrt(var_y/var_x))) * (10 - mu_x)
bed_muy

#bedingte Varianz: Var(Y|X=10)
bed_vary <- var_y*(1-cor_koeff^2)
bed_vary

#geschätzte bedingte Verteilung von Y gegeben X = 10 ist N(17.422, 0.108)

# P(12 < Y < 15|X=10)
# = F(15) - F(12)

pnorm(15, bed_muy, sqrt(bed_vary)) - pnorm(12, bed_muy, sqrt(bed_vary))


#g)
# bedingte Randverteilung von Y
kalorien <- seq(0,25, by = 0.001)
plot(kalorien, dnorm(kalorien, bed_muy, sqrt(bed_vary)), type = "l", xlab = "y", ylab = "f(y)",
     xaxs = "i", yaxs = "i", ylim = c(0, 1.4), xlim = c(0, 25), lwd = 2, col = "blue",
     main = "bedingte Randverteilung von Y für X = 10")

# Darstellung Rabdverteilung und bedingter Randverteilung von Y in einem Plot
plot(kalorien, dnorm(kalorien, mu_y, sqrt(var_y)), type = "l", xlab = "y", ylab = "f(y)",
     xaxs = "i", yaxs = "i", ylim = c(0, 1.4), xlim = c(0, 25), lwd = 2, col = "red",
     main = "Randverteilung von Y")
lines(kalorien, dnorm(kalorien, bed_muy, sqrt(bed_vary)), lwd = 2, col = "blue")
# Alternative: curve-Funktion. Achtung - die Argumente from, to, n sind notwendig!
# curve(dnorm(x, bed_muy, sqrt(bed_vary)), from = 0, to = 25, n = 1000, add = TRUE, lwd = 2, col = "blue")
legend("topleft", lwd = 2, c("Randverteilung", "bedingte Randverteilung für X = 10"), col = c("red", "blue"))


# Alternative: zwei komplette Plots übereinander gelegt
# Dafür müssen alle Argumente bezüglich der Achsen und Beschriftungen identisch sein
plot(kalorien, dnorm(kalorien, mu_y, sqrt(var_y)), type = "l", xlab = "y", ylab = "f(y)",
     xaxs = "i", yaxs = "i", ylim = c(0, 1.4), xlim = c(0, 25), lwd = 2, col = "red",
     main = "Randverteilung von Y")
par(new=TRUE)
plot(kalorien, dnorm(kalorien, bed_muy, sqrt(bed_vary)), type = "l", xlab = "y", ylab = "f(y)",
     xaxs = "i", yaxs = "i", ylim = c(0, 1.4), xlim = c(0, 25), lwd = 2, col = "blue",
     main = "Randverteilung von Y")
legend("topleft", lwd = 2, c("Randverteilung", "bedingte Randverteilung für X = 10"), col = c("red", "blue"))

plot(kalorien, dnorm(kalorien, mu_y, sqrt(var_y)), type = "l", xlab = "y", ylab = "f(y)",
     xaxs = "i", yaxs = "i", lwd = 2, col = "red",
     main = "Randverteilung von Y")
