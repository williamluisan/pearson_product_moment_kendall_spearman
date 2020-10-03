#menetapkan directory kerja
setwd("/Users/tikdevel/Documents/Code-R/Assignment 3 - PPM, Kendall, Spearman/")

#memanggil menyimpan data dan melihat data
data <- read.csv("korelasi_ganda_modified2.csv") 
head(data)
plot(data)

#correlation matrix
cor(data) #by default the method is pearson 
cor(data, method = "kendall")
cor(data, method = "spearman")

#correlation between variables
cor.test(data$X1,data$X2) 
cor.test(data$X1,data$Y) 
cor.test(data$X2,data$Y)

#visualize the correlation of the data
cr <- cor(data)

install.packages("corrplot")
library(corrplot)
corrplot(cr)
corrplot(cr, method='pie')
corrplot(cr, method='color')
corrplot(cr, method='number')
corrplot(cr, type='lower')
corrplot(cr, type='upper')
