### Aufgabe 2 ###

## (d)
#entweder:
round(-qnorm(0.99),2)
round(-qnorm(0.9),2)
# oder aufgrund Symmetrie
round(qnorm(0.01),2)
round(qnorm(0.1),2)


## (f) 
round(pnorm(-1.629),3)



### Aufgabe 3 ###
## (a) 
# ii
binom.test(23476,578268,0.04,alternative = "two.sided")

# iv
binom.test(23476, 578268, 0.04, alternative = "greater")

## (b)
# i
binom.test(3254,127584,0.026, alternative = "two.sided")
