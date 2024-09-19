tek_boyutlu_correlation_matrix_NA.r

df <- data.frame(wst1=c(55.14, 61.02, 57.09, 58.44, 56.12, 65.77),
                 atg5=c(3.89, 2.87, 3.01, 3.06, 2.56, NA),
                 cat=c(2.06, 3.24, 3.20, 3.73, 4.01, NA),
                 mgv1=c(2.36, 1.62, 2.62, 1.89, 1.80, 0.90),
                 mst20=c(2.42, 3.48, 4.29, 0.84, 1.10, NA),
                 severity=c(57.14, 62.50, 12.5, 26.01, 27.01, NA))

df1 = na.omit(df)
cor(df1)
library(Hmisc)
rcorr(as.matrix(df1))

library(corrplot)
corrplot(cor(df1))

# heat_map
library(ggcorrplot)
ggcorrplot(cor(df1))

cor_data = cor(df1)
print(cor_data)

> library(Hmisc)
> p_values <- rcorr(as.matrix(df1))
> print(p_values)

> library(corrplot)
> corrplot(cor_data, method="number")
> corrplot(cor_data, method="circle")
> corrplot(cor_data, method="pie")
> corrplot(cor_data, method="color")

# butuncul_grafik
chart.Correlation(df1, histogram=TRUE, pch=19)

