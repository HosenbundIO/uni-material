setwd("~/Documents/uni_material/uni_2_semester/statistik/")
var1 <- 1
var2 <- 2
var3 <- var1 / var2
print(var3)

vec <- c(seq(20))
print(vec)
print(vec[1] + vec[10] + vec[length(vec)])


vec2 <- c()
for (i in vec) {
  vec2 <- c(vec2, i * 1.5)
}
print(vec2)

vec3 <- vec * 1.5
print(vec3)

vec4 <- ifelse(vec2 > 10, 1, vec2)
print(vec4)

function_e <- function(x) {
  x[x > 10] <- 1
  return(x)
}

print("Aufgabe e")
print(function_e(vec))


print("Aufgabe 17")

titanic_csv <- read.csv("./Datensätze/titanic.csv")
print("HEAD")
head(titanic_csv, n = 10)
print(length(titanic_csv))
print(mean(titanic_csv$fare, na.rm = TRUE))

survived <- subset(titanic_csv, survived == 1)
sur_male <- subset(survived, sex == "male")
sur_female <- subset(survived, sex == "female")

all_male <- sum(titanic_csv$sex == "male") # [1] 577
all_female <- sum(titanic_csv$sex == "female") # [1] 314

sum_sur_male <- nrow(sur_male) # [1] 109
sum_sur_female <- nrow(sur_female) # [1] 233

chance_male <- sum_sur_male / all_male # [1] 0.1889081
chance_female <- sum_sur_female / all_female # [1] 0.7420382
# Frauen und Kinder zuerst deswegen großer Unterschied in der Überlebenschance
