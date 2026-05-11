# Aufgabe 1a)
set.seed(5)
# stichprobe <- sample(0:6, 20, replace = TRUE)
stichprobe <- c(0, 0, 1, 1, 1, 1, 2, 2, 2, 2, 3, 3, 4, 4, 5, 5, 5, 5, 6, 6)
#  [1] 0 0 1 1 1 1 2 2 2 2 3 3 4 4 5 5 5 5 6 6

table(stichprobe)
# stichprobe
# 0 1 2 3 4 5 6
# 2 4 4 2 2 4 2
prop.table(stichprobe)
#  [1] 0.00000000 0.00000000 0.01724138 0.01724138 0.01724138 0.01724138
#  [7] 0.03448276 0.03448276 0.03448276 0.03448276 0.05172414 0.05172414
# [13] 0.06896552 0.06896552 0.08620690 0.08620690 0.08620690 0.08620690
# [19] 0.10344828 0.10344828

sort(stichprobe)
#  [1] 0 0 1 1 1 1 2 2 2 2 3 3 4 4 5 5 5 5 6 6
sum(stichprobe)
# [1] 58

# Aufgabe 1b)
mean(stichprobe)
# [1] 2.9
median(stichprobe)
# [1] 2.5
var(stichprobe)
# [1] 3.884211

# Aufgabe 1c)
# hist(stichprobe, breaks = c(0, 2, 4, 6)) nicht normiert
hist(stichprobe, breaks = c(0, 2, 4, 6), freq = FALSE) # normiert

# Aufgabe 4a)
metacritic <- c(6.5, 7.1, 8.1, 9.3, 7.8, 8.1, 8.6, 9.3, 9.4, 9.0)
rotten_tomatoes <- c(8.5, 8.6, 9.4, 9.2, 9.8, 9.2, 9.4, 9.6, 9.8, 9.7)
plot(metacritic, rotten_tomatoes, xlab = "Metacritic", ylab = "Rotten Tomatoes")

# Aufgabe 4b)
cor(metacritic, rotten_tomatoes, method = "pearson")
# [1] 0.7517191
cor(metacritic, rotten_tomatoes, method = "spearman")
# [1] 0.5507718

# Aufgabe 5a)
abs_tabelle <- matrix(c(30, 14, 2, 18, 10, 2, 12, 6, 6), byrow = TRUE, nrow = 3)
rel_tabelle <- abs_tabelle / 100
print(rel_tabelle)

# Aufgabe 6a)
source("~/Documents/uni_material/uni_2_semester/statistik/Datensätze/R-Sammeldatei.R")
par(mfrow = c(3, 1))
plot(schein)
plot(groegewicht)
plot(QF)

# Aufgabe 6b)
cor(schein)
#                    Personenkraftwagen Gefangene
# Personenkraftwagen           1.000000 -0.559438
# Gefangene                   -0.559438  1.000000
cor(groegewicht)
#           groesse   gewicht
# groesse 1.0000000 0.7726182
# gewicht 0.7726182 1.0000000
cor(QF)
#             x           y
# x 1.000000000 0.006708915
# y 0.006708915 1.000000000
#

# Aufgabe 7a)
library("dslabs")
head(divorce_margarine)
#   divorce_rate_maine margarine_consumption_per_capita year
# 1                5.0                              8.2 2000
# 2                4.7                              7.0 2001
# 3                4.6                              6.5 2002
# 4                4.4                              5.3 2003
# 5                4.3                              5.2 2004
# 6                4.1                              4.0 2005
names(divorce_margarine)
# [1] "divorce_rate_maine" "margarine_consumption_per_capita" "year"

# Aufgabe 7b)
plot(divorce_margarine$margarine_consumption_per_capita, divorce_margarine$divorce_rate_maine,
  xlab = "margarine_consumption_per_capita", ylab = "divorce_rate_maine"
)

# Aufgabe 7c)
cor(divorce_margarine$margarine_consumption_per_capita, divorce_margarine$divorce_rate_maine, method = "pearson")
# [1] 0.9925585
cor(divorce_margarine$margarine_consumption_per_capita, divorce_margarine$divorce_rate_maine, method = "spearman")
# [1] 0.9847319

# Aufgabe 7d)
# Starker linearer Zusammenhang (Korrelationskoeffizienten nahe bei 1)

# Aufgabe 7e)
# Korrelation ist nicht gleich Kausalität. Hier gibt es wahrscheinlich
# keinen kausalen Zusammenhang

# Aufgabe 7f)
# Margarine ist billiger als Butter. Gelprobleme können zu Scheidungen
# führen
# wenig Geld -> Margarine statt Butter -> Scheidung
