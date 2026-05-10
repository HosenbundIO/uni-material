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
hist(stichprobe, breaks = c(0, 2, 4, 6), freq = FALSE)
