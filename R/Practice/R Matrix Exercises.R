#1.
A <- c(1,2,3)
B <- c(4,5,6)
mat <- rbind(A,B)
print(mat)

#2.
mat <- matrix(c(1:9), nrow=3)
print(mat)

#3.
print(is.matrix(mat))

#4.
mat2 <- matrix(c(1:25), nrow=5, byrow=T)
print(mat2)

#5.
print(mat2[2:3,2:3])

#6.
print(mat2[4:5,4:5])

#7.
print(sum(mat2))

#8.
print(matrix(runif(20, min=0, max=100), nrow=4))
