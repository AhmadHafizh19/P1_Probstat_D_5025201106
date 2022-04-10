#Soal nomor 2
n = 20
p = 0.2

#2.a
x = 4
dbinom(4, 20, 0.2)

#2.b
hist(rbinom(4, 20, 0.2), main= 'Histogram of Geomteric', col= 'steelblue', prob=TRUE, xlab='X', ylab = 'Frekuensi')

#2.c
mean <- n * p
mean
variance <- (n * p) * (1 - p)
variance
