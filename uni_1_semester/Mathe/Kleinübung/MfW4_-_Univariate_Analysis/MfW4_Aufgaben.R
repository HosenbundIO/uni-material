# Aufgabe 1
f1 <- expression(x^4+3*x^2+2)
f1_strich <- D(f1, "x")
print(f1_strich)

# Aufgabe 2
# a)
f2 <- expression(exp(2*x)+4*x^2-3)
f2_strich <- D(f2, "x")
print(f2_strich)

# b)
steigung0 <- eval(f2_strich, list(x=0))
print(steigung0)

# c)
steigung4 <- eval(f2_strich, list(x=4))
print(steigung4)

# Aufgabe 3
f3 <- expression(x^3+5*x-2)
# a)
f3_strich <- D(f3, "x")
print(f3_strich)

# b)
f3_strich2 <- D(f3_strich, "x")
print(f3_strich2)

# Aufgabe 4
f4 <- expression(log(3*x)+x^3-4)
# a)
f4_strich <- D(f4, "x")
s_f4_4 <- eval(f4_strich, list(x=4))
print(s_f4_4)
s_f4_2 <- eval(f4_strich, list(x=2))
print(s_f4_2)
s_f4_neg3 <- eval(f4_strich, list(x=-3))
print(s_f4_neg3)

# b)
f4_strich2 <- D(f4_strich, "x")
print(eval(f4_strich2, list(x=4)))
print(eval(f4_strich2, list(x=2)))
print(eval(f4_strich2, list(x=-3)))

# c)

