#Soal nomor 3
lambda = 4.5

#3.a
x = 6
dpois(6, 4.5)

#3.b
p = dpois(x, lambda)
data = data.frame(y=c(p), x=c(1:365))
barplot(data$y, names.arg=data$x, ylab="peluang", xlab="hari ke-", ylim=0:1)

#3.c
Dari Perhitungan pada poin A dan B, didapatkan bahwa nilai distribusi poisson tidak berubah dari hari pertama hingga hari terakhir.

#3.d
mean = lambda
mean
varian = lambda
varian
