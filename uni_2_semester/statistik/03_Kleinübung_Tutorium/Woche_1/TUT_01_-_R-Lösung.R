# Blatt 1, Aufgabe 15

# b)
# z.B.
1 + 1
1 - 1
3 * 4
10 / 5
2 ^ 8

# c)
# z.B.
a <- 3
b <- 5
c <- a / b
class(a)
class(b)
class(c)

# Aufgabe 16

# a)
v <- 1:20
# oder
v <- seq(1,20,1)
# b)
v[1]
v[10]
v[20]

v[1] + v[10] + v[20]

# c)
# Definiere zunächst einen Vektor mit der richtigen Länge (hier gibt es mehrere Möglichkeiten)
# bspw.:
a <- 1:20

# oder
a <- rep(0,20)
a

# Das i steht nun erst für die 1, dann für die 2, dann für die 3,... 
for(i in 1:length(v)) {
  a[i] <- v[i]*1.5
}
a

# Zusatz: Wie kann in R jede Zahl eines Vektors mit 1.5 multipliziert werden?
# -> R rechnet auch mit Vektoren
d <- 1:20
d * 1.5
# oder
d <- d * 1.5
d

# d)
for(i in 1:length(a)) {
  if (a[i] > 10) {
    a[i] <- 1
  }
  else {
    a[i] <- a[i]
    # hier könnte man auch einfach NULL einsetzen
  }
}

a

# e)
fun <- function(einvektor) {
  for(i in 1:length(einvektor)) {
    if (einvektor[i] > 10) {
      einvektor[i] <- 1
    }
    else {
      einvektor[i] <- einvektor[i]
    }
  }
  # Ein Ausgabewert sollte/muss immer definiert werden
  return(einvektor)
}

# f)
fun(v)

b <- 4:30

fun(b)





# Aufgabe 17


# a)
# Achten Sie darauf, dass der Datensatz in Ihrem Working Directory liegt.
# Dieses können Sie mit getwd() identifizieren und mit setwd() verändern.
# Ansonsten lässt es sich im Fenster "Files" ansteuern. Über "More" kann sowohl das aktuelle Working Directory
# angesteuert als auch der aktuell geöffnete Pfad als solches festgelegt werden.

# Zum Einlesen wird der read.csv Befehl genutzt. Die Struktur  des Befehles, also welche Argumente benutzt
# werden können, kann in der Hilfe nachgelesen werden.
# Wichtig ist, dass der vollständige Titel der Datei inklusive Dateiendung angegeben wird.
# Zusätzlich sollte spezifiziert werden, welches Trennzeichen (sep) und welches Dezimalzeichen (dec) in der
# Datei verwendet wird. Dazu kann die Datei in RStudio oder im Editor geöffnet werden
# (in RSTudio: Files -> Linksklick auf die Datei -> View File)
# Anschließend sollte noch angegeben werden, ob die Datei einen "Header" (Tabellenkopf) besitzt.

# setwd
# Auf Windows in etwa:  
setwd("C:/Users/<Benutzer>/<...>/Datensätze")
# Auf MacOS zum Beispiel: 
setwd("~/Downloads/Datensätze")

titanic_data <- read.csv("titanic.csv", sep = ",", dec = ".", header=T)

# Im Fall dieser Datei könnten die zusätzlichen Argumente nach dem Titel der Datei sogar weggelassen werden, da
# die Default-Einstellung des Befehls als Trennzeichen das Komma, als Dezimalzeichen den Punkt und einen 
# Tabellenkopf ist. 
# Dies ist ebenfalls in der Hilfe erkennbar:
# read.csv(file, header=TRUE, sep=",", quote="/", dec=".", fill=TRUE, comment.char='"', ...)


# b)
head(titanic_data, 4)

# Anzahl der Einträge:
nrow(titanic_data)

# c)
names(titanic_data)
# So erhalten Sie zusätzlich eine Übersicht über die Spaltennamen

# d)
mean(titanic_data$fare)
# auf zwei Nachkommastellen runden, damit die Angabe als Währung Sinn ergibt:
round(mean(titanic_data$fare), 2)


# e) Erzeugt werden soll eine neue Tabelle, in der nur die Daten von überlebenden Passagieren enthalten sind.
# Die neue Tabelle wird "lebend" genannt.
# Die vollständige Tabelle mit allen Daten heißt "titanci_data". Daraus werden nun nur bestimmte Daten benötigt.
# Mithilfe von [...,...] kann auf [Zeile, Spalte] zugegriffen werden.
# Überlebende Passagiere sind an der 1 in der Spalte "survived" erkennbar (1 = ja, 0 = nein).
# Dementsprechend sollen alle Passagiere, die in der Spalte "survived" eine 1 stehen haben, übernommen werden.
# Dies bedeutet, dass alle Zeilen mit einer 1 in der Spalte "survived" übernommen werden.(titanic_data$survived == 1)
# Zusätzlich sollen alle anderen Daten zu diesen Passagieren, also alle weiteren Spalten, ebenfalls übernommen werden.
# "Spalte" in [Zeile, Spalte] bleibt daher leer.

lebend <- titanic_data[titanic_data$survived == 1, ]
head(lebend)


# Alternativ: Aus der Tabelle/dem Datensatz "titanic_data" wird eine neue "Unter"tabelle, ein subset, erstellt.
lebend <- subset(titanic_data, titanic_data$survived == 1)




# f)
# In der Tabelle ist das Geschlecht mit "male" oder "female" gekennzeichnet. Da es sich hierbei um Wörter handelt,
# und nicht um eine Zahl, müssen Anführungszeichen verwendet werden.
# Überlebende Frauen können entweder mit '== "female"' ("ist gleich Frau")
# oder '!= "male"' ("ist nicht Mann") ausgewählt werden.
# Überlebende Männer können dementsprechend mit '== "male"' oder '!= "female"' ausgewählt werden.

lebend_frau <- lebend[lebend$sex != "male", ]
lebend_mann <- lebend[lebend$sex == "male", ]

lebend_frau
lebend_mann



# g)

insg_frau <- titanic_data[titanic_data$sex != "male",]
insg_mann <- titanic_data[titanic_data$sex == "male",]

insg_frau
insg_mann

prozent_lebend_frau <- nrow(lebend_frau) / nrow(insg_frau) * 100
prozent_lebend_mann <- nrow(lebend_mann) / nrow(insg_mann) * 100

prozent_lebend_frau
prozent_lebend_mann


