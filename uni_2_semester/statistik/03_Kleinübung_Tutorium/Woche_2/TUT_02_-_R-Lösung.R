# Blatt 2

# Vorbereitung
setwd("C://...")
setwd("~/...")

# Einlesen der Daten
source("R-Sammeldatei.R")

# Aufgabe 3
# a)
hist(Gewicht_m)

# b)
hist(Gewicht_m, main="Diagramm von Gewicht_m", xlab="Gewicht von männlichen Studenten",
     ylab="Absolute Häufigkeiten", breaks=c(40, 70, 100, 130, 160))

# c)
axis(1, Gewicht_m)

# d)
hist(Gewicht_m, breaks=c(40, 70, 100, 130, 160), plot=F)

# Überprüfen der händischen Ergebnisse
testa <- hist(Gewicht_m, breaks=c(40, 70, 100, 130, 160), plot=F)
abs <- testa$counts
abs
cumsum(abs)
rel <- testa$counts / 125
rel
cumsum(rel)

# e)
hist(Gewicht_m, breaks=c(40, 70, 100, 130, 160))

# h)
hist(Gewicht_m, breaks = c(50, 60, 70, 80, 90, 200), prob=F)

# i)
hist(Gewicht_m, breaks = c(50, 60, 70, 80, 90, 200), prob=T)



?plot
