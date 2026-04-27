# setwd("~/Documents/uni_material/uni_2_semester/statistik/Datensätze/")

Gewicht_m <- c(
  76, 71, 73, 68, 93, 65, 53, 75, 85, 83, 85, 75, 85, 67, 68,
  82, 126, 83, 70, 72, 75, 78, 65, 76, 84, 90, 70, 84, 85, 58,
  81, 85, 80, 90, 75, 74, 69, 68, 80, 66, 65, 90, 57, 92, 82, 66,
  68, 90, 70, 67, 72, 63, 62, 87, 80, 82, 98, 65, 137, 66, 85,
  82, 72, 81, 83, 62, 74, 82, 72, 72, 75, 74, 75, 87, 72, 75, 75,
  86, 69, 75, 69, 74, 78, 66, 96, 110, 80, 62, 77, 65, 95, 69,
  60, 80, 60, 80, 72, 70, 89, 62, 80, 65, 74, 82, 62, 102, 69,
  61, 110, 67, 68, 78, 75, 74, 70, 88, 68, 75, 70, 78, 63, 77,
  73, 65, 86
)

# Aufgabe 3a)
hist(Gewicht_m) # Klassenbreite beträgt je 10

# Aufgabe 3b)
hist(Gewicht_m,
  breaks = c(40, 70, 100, 130, 160),
  main = "Diagramm von Gewicht_m",
  ylab = "Absolute Häufigkeiten",
  xlab = "Gewicht von männlichen Studierenden"
)

# Aufgabe 3c)
axis(1, Gewicht_m)
# Tatsächliche Werte werden direkt auf der X-Achse abgebildet

# Aufgabe 3d)
hist_obj <- hist(Gewicht_m,
  breaks = c(40, 70, 100, 130, 160),
  plot = FALSE
)
length(Gewicht_m) # [1] 125

abs <- hist_obj$counts # [1] 44 76  4  1
f_j <- abs / length(Gewicht_m) # [1] 0.352 0.608 0.032 0.008
H_j <- cumsum(abs) # [1]  44 120 124 125
F_j <- H_j / length(Gewicht_m) # [1] 0.352 0.960 0.992 1.000

# Aufgabe 3h)
hist(Gewicht_m,
  breaks = c(50, 60, 70, 80, 90, 200),
  prob = FALSE
)

hist(Gewicht_m,
  breaks = c(50, 60, 70, 80, 90, 200),
  prob = TRUE # oder freq = FALSE --> prob == !freq
)

# Aufgabe 4
semester <- 2:7
teilnehmer <- c(1, 7, 5, 5, 1, 4) # sorted: 1, 1, 4, 5, 5, 7
mittelwert_teilnehmer <- (1 / 23) * sum(teilnehmer * semester) # [1] 4.434783

rohdaten <- rep(semester, teilnehmer)
median_teilnehmer <- median(rohdaten) # [1] 4

max_val <- which.max(teilnehmer) # [1] 2
modalwert_teilnehmer <- semester[max_val] # [2] 3

varianz_helper <- semester^2
varianz_teilnehmer <- (1 / 23) * sum(teilnehmer * varianz_helper) - mittelwert_teilnehmer^2 # [1] 2.245747

standardabweichung_teilnehmer <- sqrt(varianz_teilnehmer) # [1] 1.498582

# Aufgabe 7
x <- c(4, 2, 1, 6, 3, 1, 1, 7, 13, 4, 6, 6, 1, 14, 5, 9, 3, 2, 6, 3)
x <- sort(x)
boxplot(x, main = "Boxplot", ylab = "Anzahl der Semester")

# Aufgabe 7b)
xrow <- 6 + 1.5 * (6 - 2) # [1] 12
# xow = 9
xruw <- 2 - 1.5 * (6 - 2) # [1] -4
# xuw = 1
box <- boxplot(x, main = "Boxplot", ylab = "Anzahl der Semester", plot = FALSE)


# Aufgabe 7c)

