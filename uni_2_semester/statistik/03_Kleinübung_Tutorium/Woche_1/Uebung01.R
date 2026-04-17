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

print("-------------------------------------------------")
vec4 <- ifelse(vec2 > 10, 1, vec2)
print(vec4)

function_e <- function(x) {
  x[x > 10] <- 1
  return(x)
}

print("Aufgabe e")
print(function_e(vec))


print("Aufgabe 17")
