#Soal nomor 5
lambda = 3

#5.a
set.seed(1)
rexp(3)

#5.b
hist(rexp(10, lambda), main = "Histogram Exponetial with 10 Random Generations")
hist(rexp(100, lambda), main = "Histogram Exponetial with 100 Random Generations")
hist(rexp(1000, lambda), main = "Histogram Exponetial with 1000 Random Generations")
hist(rexp(10000, lambda), main = "Histogram Exponetial with 10000 Random Generations")

#5.c
n = 100
set.seed(1)
mean = mean(1/(rexp(n, lambda)))
variance = 1/((sd(rexp(n, lambda)))^2)
mean
variance
