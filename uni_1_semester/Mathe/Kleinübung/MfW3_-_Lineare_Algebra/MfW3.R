## Aufgabe 1
A <- matrix(c(1, 4, 7, 0, 5, 2, 3, 10, 8), nrow = 3, ncol = 3)
print(A)
vecb <- c(3, 4, 2, 1, 10, 3, 2, 0, 8)
B <- matrix(vecb, nrow=3, ncol=3)
print(B)
C <- matrix(0, nrow=3, ncol=2)
print(C)
D <- matrix(1, nrow=2, ncol=3)
print(D)
E <- diag(1, nrow=4, ncol=4)
print(E)

print(A[3, 2])
print(B[2, 1])
print(B[3, ])

## Aufgabe 2
print(A + B)
print(3*A-t(B))
print(A*B)

C <- A*B
c11 <- A[1, ] * B[, 1]
print(sum(c11))

A <- matrix(c(1,2,4,7,3,5), nrow=2, ncol=3)
B <- matrix(c(2,6,3,4,1,2), nrow=2, ncol=3)
C <- matrix(1, nrow=2, ncol=2)
D <-  matrix(0, nrow=3, ncol=3)
E <- diag(rep(1, times=3))

print("Aufgabe b) ")
print(2*A+B)
print(A%*%t(B))
print(C%*%A+B%*%D+2*A%*%E)
print(E%*%E)

print("Aufgabe c) ")
F <- 2*A+B
print(F[1,2])
print(F[2,3])
print(A[1,3])
print(A[2, ])
G <- A%*%t(B)
print(E[2,2])
H <- C%*%A+B%*%D+2*A%*%E
print(H[1,2])
