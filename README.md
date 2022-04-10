# P1_Probstat_D_5025201106

# PRAKTIKUM PROBSTAT MODUL1 2022 KELAS D 

#### Nama    : Ahmad Hafizh Assa'ad
#### NRP     : 5025201106
#### Kelas   : Probabilitas dan Statistik D

</br>

## PENJELASAN 
### Nomor 1 
Seorang penyurvei secara acak memilih orang-orang di jalan sampai dia bertemu dengan
seseorang yang menghadiri acara vaksinasi sebelumnya.

#### 1.a
Berapa peluang penyurvei bertemu x = 3 orang yang tidak menghadiri acara vaksinasi sebelum keberhasilan pertama ketika p = 0,20 dari populasi menghadiri acara vaksinasi ? (distribusi Geometrik)

- Menggunakan: dgeom(x-1,p) --> P(X=3, p = 0.2) = dgeom(2, 0.2)

```
x = 3
p = 0.2
dgeom(2, 0.2)
```

#### 1.b
mean Distribusi Geometrik dengan 10000 data random , prob = 0,20 dimana distribusi geometrik acak tersebut X = 3 ( distribusi geometrik acak () == 3 )
```
mean(rgeom(10000, 0.20) == 3)
```

#### 1.c
Bandingkan Hasil poin a dan b , apa kesimpulan yang bisa didapatkan?
```
Pada perhitungan poin A mendapatkan hasil yang tetap dan pada perhitungan poin B mendapatkan hasil yang berbeda.
```

#### 1.d
Histogram Distribusi Geometrik , Peluang X = 3 gagal Sebelum Sukses Pertama.

- Menggunakan fungsi `mutate()` untuk menambahkan variabel baru yang merupakan fungsi dari variabel yang ada.     
- Menggunakan fungsi `ggplot()` untuk membuat data graphics agar lebih interaktif
```
library(dplyr)
library(ggplot2)
n = 3
data.frame(x = 0:10, prob = dgeom(x = 0:10, prob = p)) %>% mutate(Failures = ifelse(x == n, n, "other")) %>%
  ggplot(aes(x = factor(x), y = prob, fill = Failures)) +
  geom_col() +
  geom_text(aes(label = round(prob,2), y = prob + 0.01), position = position_dodge(0.9), size = 3, vjust = 0) +
  labs(title = "Histogram Distribusi Geometrik", subtitle = "Peluang X = 3 gagal Sebelum Sukses Pertama", x = "Kegagalan sebelum sukses yang pertama (x)", y = "Peluang") 
```

#### 1.e
Nilai Rataan (μ) dan Varian (σ²) dari Distribusi Geometrik.
- Mencari rara-rata menggunakan rumus `mean = n/p`
```
mean = n/p
mean
```
- Mencari varian menggunakan rumus `varian = (n - p) / (p^2)`
```
varian = (n - p) / ('^'(p, 2))
varian
```

![image](https://user-images.githubusercontent.com/96507651/162624808-83d9b604-27bb-474c-b526-c5504a760d1c.png)
![image](https://user-images.githubusercontent.com/96507651/162624816-fa237e75-9d4d-464f-8200-c0a638522da7.png)


</br>

### Nomor 2
Terdapat 20 pasien menderita Covid19 dengan peluang sembuh sebesar 0.2. Tentukan :
#### 2.a
Peluang terdapat 4 pasien yang sembuh. 

- Menggunakan distribusi binomial
```
dbinom(4, 20, 0.2)
```

#### 2.b
Gambarkan grafik histogram berdasarkan kasus tersebut.
```
p = dbinom(1:20, 20, 0.2)
data = data.frame(y=c(p), x=c(1:20))
barplot(data$y, names.arg=data$x, ylab="Peluang", xlab="Jumlah Pasien")
```

#### 2.c
Nilai Rataan (μ) dan Varian (σ²) dari Distribusi Binomial.
- Mencari rara-rata menggunakan rumus `mean = n * p`
```
mean <- n * p
mean
```
- Mencari varian menggunakan rumus `variance = (n * p) * (1 - p)`
```
varian <- (n * p) * (1 - p)
varian
```

![image](https://user-images.githubusercontent.com/96507651/162624844-ac84bd0a-7350-452e-8ff7-ad3a2aa6e1d6.png)
![image](https://user-images.githubusercontent.com/96507651/162624852-a1c403d8-ba99-422a-941e-5477e3687086.png)


### Nomor 3
Diketahui data dari sebuah tempat bersalin di rumah sakit tertentu menunjukkan rata-rata historis
4,5 bayi lahir di rumah sakit ini setiap hari. (gunakan Distribusi Poisson)

#### 3.a
Berapa peluang bahwa 6 bayi akan lahir di rumah sakit ini besok?

- Menggunakan peluang distribusi poisson maka
```
dpois(6, 4.5)
```

#### 3.b
Menggunakan `geom_histogram` untuk menampilkan histogramnya

```
p = dpois(x, lambda)
data = data.frame(y=c(p), x=c(1:365))
barplot(data$y, names.arg=data$x, ylab="peluang", xlab="hari ke-", ylim=0:1)
```
#### 3.c
dan bandingkan hasil poin a dan b , Apa kesimpulan yang bisa didapatkan?
```
Dari Perhitungan pada poin A dan B, didapatkan bahwa nilai distribusi poisson tidak berubah dari hari pertama hingga hari terakhir.
```

#### 3.d
Nilai Rataan (μ) dan Varian (σ²) dari Distribusi Poisson.
- Mencari rara-rata menggunakan rumus `mean = lambda`
```
mean = lambda
mean
```
- Mencari varian menggunakan rumus `varian = lambda`
```
varian = lambda
varian
```

![image](https://user-images.githubusercontent.com/96507651/162624880-acc35e6d-5615-4ee3-b2be-250bef513681.png)
![image](https://user-images.githubusercontent.com/96507651/162624891-fc2903a5-fd53-4931-9d61-8ee54cf39ec5.png)


### Nomor 4
#### 4.a
Fungsi Probabilitas dari Distribusi Chi-Square.
Maka adalah sebagai berikut
```
x = 2
v = 10
dchisq(x, v)
```

#### 4b
Histogram dari Distribusi Chi-Square dengan 100 data random.
Menggunakan fungsi `hist()` dan hasilnya nanti akan berubah-ubah setiap generate
```
n = 100
v = 10
hist(rchisq(n, v))
```

#### 4.c
Nilai Rataan (μ) dan Varian ( σ² ) dari Distribusi Chi-Square.
- Mencari rara-rata menggunakan rumus `mean = v`
```
mean = v
mean
```
- Mencari varian menggunakan rumus `variance = 2 * v`
```
varian = 2 * v
varian
```

![image](https://user-images.githubusercontent.com/96507651/162624929-77e20492-01e3-4279-80a1-78882f11f90e.png)
![image](https://user-images.githubusercontent.com/96507651/162624943-f2d250ac-beb6-4b1c-a97f-704d0ece67bd.png)


### Nomor 5
#### 5.a
Fungsi Probabilitas dari Distribusi Exponensial
```
set.seed(1)
rexp(3)
```

#### 5.b
Histogram dari Distribusi Exponensial untuk 10, 100, 1000 dan 10000 bilangan random
```
hist(rexp(10, lambda), main = "Histogram Exponetial with 10 Random Generations")
hist(rexp(100, lambda), main = "Histogram Exponetial with 100 Random Generations")
hist(rexp(1000, lambda), main = "Histogram Exponetial with 1000 Random Generations")
hist(rexp(10000, lambda), main = "Histogram Exponetial with 10000 Random Generations")
```
#### 5.c
Nilai Rataan (μ) dan Varian ( σ² ) dari Distribusi Exponensial untuk n = 100 dan λ = 3
```
n = 100
set.seed(1)
mean = mean(1/(rexp(n, lambda)))
variance = 1/((sd(rexp(n, lambda)))^2)
mean
variance
```

![image](https://user-images.githubusercontent.com/96507651/162625063-94c1fd9a-54e7-4f60-8458-8fc842bfc976.png)
![image](https://user-images.githubusercontent.com/96507651/162624983-56343c71-c5d2-484b-8b99-45642e784da0.png)
![image](https://user-images.githubusercontent.com/96507651/162624998-10a8a46c-3209-43c2-9336-1f0f994524b0.png)
![image](https://user-images.githubusercontent.com/96507651/162625014-78279629-0319-4356-b5d6-d2e52cdcc021.png)
![image](https://user-images.githubusercontent.com/96507651/162625035-de6507ca-26ad-4f44-8e1e-70576c69b5de.png)


### Nomor 6
#### 6.a
Fungsi Probabilitas dari Distribusi Normal P(X1 ≤ x ≤ X2), hitung Z-Score Nya dan plot
data generate randomnya dalam bentuk grafik. Petunjuk(gunakan fungsi plot()).
Keterangan :
X1 = Dibawah rata-rata
X2 = Diatas rata-rata
Contoh data :
11
1,2,4,2,6,3,10,11,5,3,6,8
rata-rata = 5.083333
X1 = 5
X2 = 6
```
set.seed(1)
data <- rnorm(n, mean, sd)
data
summary(data)

x1 = runif(1, min = min(data), max = mean)
x2 = runif(1, min = mean, max = max(data))
x1
x2

probability1 <- pnorm(x1, mean, sd)
probability2 <- pnorm(x2, mean, sd)
probability1
probability2

probability <- probability2 - probability1
plot(data)
```

#### 6.b
Generate Histogram dari Distribusi Normal dengan breaks 50 dan format penamaan:
NRP_Nama_Probstat_{Nama Kelas}_DNhistogram
Contoh :
312312312_Rola_Probstat_A_DNhistogram
```
hist(data, breaks = 50, main = "5025201106_Ahmad Hafizh Assa'ad_Probstat_D_DNhistogram")
```

#### 6.c
Nilai Varian ( ) dari hasil generate random nilai σ² Distribusi Normal.
- Mencari varian menggunakan rumus `variance = sd * sd`
```
varian = (sd(data))^2
varian
```

![image](https://user-images.githubusercontent.com/96507651/162625157-e4513e3d-0942-48bc-9e35-2de41edd21b6.png)
![image](https://user-images.githubusercontent.com/96507651/162625182-fce3ee09-5db0-4e93-abd4-96159e51d34c.png)
![image](https://user-images.githubusercontent.com/96507651/162625198-1ac35c01-1de8-4e53-bba5-1ce44b3a052e.png)



