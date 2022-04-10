#Soal nom0r 1
x = 3
p = 0.2

#1.a
dgeom(2, 0.2)


#1.b
n = 10000
mean(rgeom(10000, 0.2) == 3)

#1.c
pada perhitungan poin A mendapatkan hasil yang tetap dan pada perhitungan poin B mendapatkan hasil yang berbeda

#1.d
library(dplyr)
library(ggplot2)
n = 3
data.frame(x = 0:10, prob = dgeom(x = 0:10, prob = p)) %>% mutate(Failures = ifelse(x == n, n, "other")) %>%
  ggplot(aes(x = factor(x), y = prob, fill = Failures)) +
  geom_col() +
  geom_text(aes(label = round(prob,2), y = prob + 0.01), position = position_dodge(0.9), size = 3, vjust = 0) +
  labs(title = "Histogram Distribusi Geometrik", subtitle = "Peluang X = 3 gagal Sebelum Sukses Pertama", x = "Kegagalan sebelum sukses yang pertama (x)", y = "Peluang") 

#1.e
varian = (n - p) / ('^'(p, 2))
varian
