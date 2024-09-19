tek_boyutlu_correlation_matrix_NA.r

df <- data.frame(wst1=c(55.14, 61.02, 57.09, 58.44, 56.12, 65.77, 57.50, 58.41, 55.95, 65.68, 57.26, 58.15),
                 atg5=c(3.89, 2.87, 3.01, 3.06, 2.27, 1.28, 0.39, 0.40, 1.10, NA, NA, NA),
                 cat=c(2.06, 3.24, 3.20, 3.73, 0.96, 0.96, 0.46, 0.85, 0.50, NA, NA, NA),
                 mgv1=c(2.36, 1.62, 2.62, 1.89, 1.80, 0.90, 2.19, 0.74, 1.48, NA, NA, NA),
                 mst20=c(2.42, 3.48, 4.29, 0.84, 0.74, 1.92, 1.03, 0.42, 1.10, NA, NA, NA),
                 severity=c(57.14, 62.50, 0.0, 12.5, 0.0, NA, NA, NA, NA, NA, NA, NA))

df1 = na.omit(df)
cor(df1)

#                wst1       atg5        cat        mgv1     mst20   severity
# wst1      1.0000000 -0.2839334 0.64385727 -0.60062593 0.2652234  0.3133416
# atg5     -0.2839334  1.0000000 0.27082874  0.52785524 0.2791774  0.5688765
# cat       0.6438573  0.2708287 1.00000000  0.06809653 0.3943651  0.1315061
# mgv1     -0.6006259  0.5278552 0.06809653  1.00000000 0.4901223 -0.2368904
# mst20     0.2652234  0.2791774 0.39436509  0.49012230 1.0000000  0.2831430
# severity  0.3133416  0.5688765 0.13150607 -0.23689036 0.2831430  1.0000000

library(Hmisc)
rcorr(as.matrix(df1))

#           wst1  atg5  cat  mgv1 mst20 severity
# wst1      1.00 -0.28 0.64 -0.60  0.27     0.31
# atg5     -0.28  1.00 0.27  0.53  0.28     0.57
# cat       0.64  0.27 1.00  0.07  0.39     0.13
# mgv1     -0.60  0.53 0.07  1.00  0.49    -0.24
# mst20     0.27  0.28 0.39  0.49  1.00     0.28
# severity  0.31  0.57 0.13 -0.24  0.28     1.00

# n= 5 


# P
#          wst1   atg5   cat    mgv1   mst20  severity
# wst1            0.6434 0.2410 0.2841 0.6663 0.6077  
# atg5     0.6434        0.6594 0.3606 0.6492 0.3169  
# cat      0.2410 0.6594        0.9134 0.5112 0.8330  
# mgv1     0.2841 0.3606 0.9134        0.4019 0.7012  
# mst20    0.6663 0.6492 0.5112 0.4019        0.6444  
# severity 0.6077 0.3169 0.8330 0.7012 0.6444 

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
library("PerformanceAnalytics")
chart.Correlation(df1, histogram=TRUE, pch=19)