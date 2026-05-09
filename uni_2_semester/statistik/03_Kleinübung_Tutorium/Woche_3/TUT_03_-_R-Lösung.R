# Blatt 3

# Aufgabe 1
# a)
set.seed(5) 
Stichprobe <- sample (0:6, 20, replace=T)

table(Stichprobe)
sort(Stichprobe)
sum(Stichprobe)

# b)
table(Stichprobe) / 20
prop.table(table(Stichprobe))

# c)
hist(Stichprobe, breaks=c(0,2,4,6))

hist(Stichprobe, breaks=c(0,2,4,6), prob=T)
hist(Stichprobe, breaks=c(0,2,4,6), freq=F)


# Aufgabe 4
Metacritic <- c(6.5, 7.1, 8.1, 9.3, 7.8, 8.1, 8.6, 9.3, 9.4, 9.0) 
RottenTomatoes <- c(8.5, 8.6, 9.4, 9.2, 9.8, 9.2, 9.4, 9.6, 9.8, 9.7)

# a)
plot(Metacritic, RottenTomatoes, xlab="Metacritic", ylab="RottenTomatoes")

# b)
# i)
cor(Metacritic, RottenTomatoes, method="pearson")

# Hinweis: cor(...) anschauen, was ist die Default-Einstellung?

# ii)
cor(Metacritic, RottenTomatoes, method="spearman")


# Aufgabe 5

# Erstellung der ursprünglichen Tabelle mit absoluten Häufigkeiten
abs_tabelle <- matrix(c(30, 14, 2, 18, 10, 2, 12, 6, 6), byrow=T, nrow=3)

# a)
rel_tabelle <- abs_tabelle / 100
rel_tabelle

# Randhäufigkeiten zum Beispiel mit dem "sum(...)" Befehl ausgeben lassen.
# Beispiel Randhäufigkeit für Y = 0, entspricht der Summe der ersten Spalte über alle Zeilen
sum(rel_tabelle[,1])

# Beispiel Randhäufigkeit für X = 0, entspricht der Summe der ersten Zeile über alle Spalten
sum(rel_tabelle[1,])


# Aufgabe 6

# a)
par(mfrow=c(3, 1))

plot(schein)
# Darstellung mit Achsenbeschriftungen und Überschrift
# plot(schein, xlab="Anzahl an Neuzulassungen von PKW",
# ylab="Anzahl Gefangene in Deutschland",
# main="Neuzulassungen PKW/ Gefangene in Deutschland 1998-2007", xlim=c(3100000,3810000), 
# ylim=c(68000, 80000), bty="l", xaxs="i", yaxs="i", pch=19)

plot(groegewicht)
# Darstellung mit Achsenbeschriftungen und Überschrift
# plot(groegewicht, xlab="Größe", ylab="Gewicht", 
# main="Größe/Gewicht von 227 Studierenden", bty="l", xlim=c(150, 205), 
# ylim=c(40, 140), xaxs="i", yaxs="i", pch=19)

plot(QF)
# Darstellung mit Achsenbeschriftungen und Überschrift
# plot(QF, xlab="x", ylab="x^2", 
# main="Zufallszahlen einer Rechteckverteilung mit a=-1, b=1 und deren Quadrate",
# bty="l", xlim=c(-1,1), ylim=c(0,1), xaxs="i", yaxs="i", pch=19)


# Korrelationskoeffizient: normiertes Maß für die Stärke des linearen Zusammenhangs
# Datensatz schein: vermutlich geringe bis keine Korrelation, kleiner Korrelationskoeffizient
# Datensatz groegewicht: vermutlich Korrelation , großer Korrelationskoeffizient
# Datensatz QF: keine Korrelation, da kein linearer Zusammenhang, Korrelationskoeffizient um 0

# Um in dem Bereich "Plots" wieder die Standardeinstellungen herzustellen:
# dev.off()
# ausführen. Löscht auch alle vorhandenen Plots, diese bei Bedarf also zuvor abspeichern.

# b)

cor(schein)
cor(groegewicht)
cor(QF)

# Man kann nicht von unkorreliert auf unabhängig schließen.

# Datensatz QF hat sehr geringe Korrelation, da der y Wert aber das Quadrat des x Wertes ist,
# keine Unabhängigkeit.
# Hier besteht ein quadratischer Zusammenhang.

# Datensatz schein hat eine moderate Korrelation, allerdings haben die Anzahl
# Neuzulassung PKW und die Anzahl Gefangene kaum direkten Einfluss aufeinander


# Aufgabe 7

# Wir installieren (nur einmal) und importieren das Paket "dslabs"
install.packages("dslabs")
library(dslabs)

# Die Funktion head() zeigt uns die ersten 6 Beobachtungen von unserem Datensatz
# Das ist hilfreich wenn wir sehr große Datensätze haben und nur eine Idee vom
# Datensatz bekommen wollen
head(divorce_margarine)

# a)
# Die Funktion names() zeigt uns die Namen von den Spalten von einem Datensatz
names(divorce_margarine)

# b)
# Das erste Argument von der plot() Funktion sind die Werte von der X-Achse
# Das zweite Argument sind dementsprechent die Werte von der Y-Achse
# Man kann zusätzlich die Achsen mit dem Argument xlab bzw. ylab beschriften
plot(divorce_margarine$margarine_consumption_per_capita,divorce_margarine$divorce_rate_maine,
     xlab="margarine_consumption_per_capita", ylab="divorce_rate_maine")

# c)
# Die Funktion cor() berechnet den Pearson- oder Spearmankorrelationskoeffizient
# je nach Methode wählt (method = "pearson" oder method = "spearman")
cor(divorce_margarine$margarine_consumption_per_capita,divorce_margarine$divorce_rate_maine,
    method="pearson")
cor(divorce_margarine$margarine_consumption_per_capita, divorce_margarine$divorce_rate_maine,
    method="spearman")

# d)
# Beide Korrelationskoeffizienten sind nahe an 1 --> wir haben einen starken
# positiven Zusammenhang zwischen "Margarinenverbrauch" und "Scheidungsrate"

# e)
# Hier gibt es sehr wahrscheinlich keinen kausalen Zusammenhang
# Korrelation ist nicht gleich Kausalität!

# f)
# Ein Grund dafür könnte sein, dass man eventuell unter stressigen Beziehungen
# tendiert, mehr Fett zu essen. Ein anderer Grund, wie in den Kurzlösungen
# erwähnt wurde, könnte sein, dass Margarine billiger als Butter ist.
# --> das Ehepaar hat Geldprobleme --> Scheidung!
# Diese sind aber nur spekulative Gründe


# dev.off()
