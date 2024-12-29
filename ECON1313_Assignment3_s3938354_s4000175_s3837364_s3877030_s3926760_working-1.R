load(‘Data.Rdata’) 

attach(dataset) 

View(dataset) 



#Part 2 

library(fpp2) 

library(fpp3) 

library(readxl) 



#import the clean dataset from excel and save it in R format 

country_cleandata<-read_excel('CleanData.xlsx') 

country_cleandata 

attach(country_cleandata) 

view(country_cleandata) 

save(country_cleandata, file="TEAM A_Assessment 3.Rdata") 



#Descriptive statistics of all the significant variables in country_cleandata  

summary(country_cleandata$gini) 

sd(country_cleandata$gini, na.rm = TRUE) 

summary(country_cleandata$inflation) 

sd(country_cleandata$inflation, na.rm = TRUE) 

summary(country_cleandata$unemployment) 

sd(country_cleandata$unemployment, na.rm = TRUE) 

summary(country_cleandata$gdp) 

sd(country_cleandata$gdp, na.rm = TRUE) 

summary(country_cleandata$gdpgrowth) 

sd(country_cleandata$gdpgrowth, na.rm = TRUE) 

summary(country_cleandata$gdppercap) 

sd(country_cleandata$gdppercap, na.rm = TRUE) 

summary(country_cleandata$netexppergdp) 

sd(country_cleandata$netexppergdp, na.rm = TRUE) 

summary(country_cleandata$fdipergdp) 

sd(country_cleandata$fdipergdp, na.rm = TRUE) 

summary(country_cleandata$incometax) 

sd(country_cleandata$incometax, na.rm = TRUE) 

summary(country_cleandata$tradetax) 

sd(country_cleandata$tradetax, na.rm = TRUE) 

summary(country_cleandata$population) 

sd(country_cleandata$population, na.rm = TRUE) 

summary(country_cleandata$education) 

sd(country_cleandata$education, na.rm = TRUE) 



summary(country_cleandata$incometax, na.rm = TRUE) 

sd(country_cleandata$incometax, na.rm = TRUE) 





#create a scatter plot  

plot(x = country_cleandata$inflation, y = country_cleandata$gini, 
     
     xlab = "Inflation", 
     
     ylab = "Gini coefficient", 
     
     xlim = c(1, 10), 
     
     ylim = c(24, 60), 
     
     main = "Gini vs Inflation") 

max(country_cleandata$inflation, na.rm = TRUE) 

min(country_cleandata$gini, na.rm = TRUE) 



plot(x = country_cleandata$netexppergdp, y = country_cleandata$gini, 
     
     xlab = "Net exports per GDP", 
     
     ylab = "Gini coefficient", 
     
     xlim = c(-20, 20), 
     
     ylim = c(24, 60), 
     
     main = "Gini vs Net exports per GDP") 

max(country_cleandata$netexppergdp) 

min(country_cleandata$netexppergdp) 



plot(x = country_cleandata$fdipergdp, y = country_cleandata$gini, 
     
     xlab = "FDI inflow per GDP", 
     
     ylab = "Gini coefficient", 
     
     xlim = c(-5, 10), 
     
     ylim = c(24, 60), 
     
     main = "Gini vs FDI inflow per GDP") 

max(country_cleandata$fdipergdp) 

min(country_cleandata$fdipergdp) 



plot(x = country_cleandata$unemployment, y = country_cleandata$gini, 
     
     xlab = "Unemployment rate", 
     
     ylab = "Gini coefficient", 
     
     main = "Gini vs Unemployment") 

max(country_cleandata$unemployment) 

min(country_cleandata$unemployment) 



plot(x = country_cleandata$education, y = country_cleandata$gini, 
     
     xlab = "Average years of schooling", 
     
     ylab = "Gini coefficient", 
     
     main = "Gini vs Average years of schooling") 

max(country_cleandata$education) 

min(country_cleandata$education) 



# Identify the missing observations and values in the dataset 

colSums(is.na(country_cleandata)) 

which(is.na(country_cleandata$gini)) 

which(is.na(country_cleandata$inflation)) 

which(is.na(country_cleandata$unemployment)) 

which(is.na(country_cleandata$incometax)) 

which(is.na(country_cleandata$tradetax)) 

which(is.na(country_cleandata$education)) 



#Reduce NA's in the dataset by droppping observations (Don't need this step) 

country_cleandata_nona <-country_cleandata %>% na.omit()  



#replacing missing values of gini with the mean 

country_cleandata$gini[is.na(country_cleandata$gini)] <- mean(country_cleandata$gini, na.rm = TRUE) 

country_cleandata$inflation[is.na(country_cleandata$inflation)] <- mean(country_cleandata$inflation, na.rm = TRUE) 

country_cleandata$unemployment[is.na(country_cleandata$unemployment)] <- mean(country_cleandata$unemployment, na.rm = TRUE) 

country_cleandata$incometax[is.na(country_cleandata$incometax)] <- mean(country_cleandata$incometax, na.rm = TRUE) 

country_cleandata$tradetax[is.na(country_cleandata$tradetax)] <- mean(country_cleandata$tradetax, na.rm = TRUE) 

country_cleandata$education[is.na(country_cleandata$education)] <- mean(country_cleandata$education, na.rm = TRUE) 

nrow(country_cleandata) 

View(country_cleandata) 

attach(country_cleandata) 

save(country_cleandata, file="TEAM A_Assessment 3.Rdata") 



#Identify outliers 

boxplot(country_cleandata$gini, xlab = "gini", ylab="%", main = "Gini Boxplot")  

boxplot.stats(country_cleandata_noNA$gini)$out 

boxplot(country_cleandata$inflation, xlab = "inflation", ylab="%", main = "Inflation Boxplot") 

boxplot.stats(country_cleandata_noNA$inflation)$out 

boxplot(country_cleandata$unemployment, xlab = "unemployment", ylab="%", main = "Unemployment Boxplot") 

boxplot.stats(country_cleandata_noNA$unemployment)$out 

boxplot(country_cleandata$gdpgrowth, xlab = "gdpgrowth", ylab="%", main = "GDP growth Boxplot") 

boxplot.stats(country_cleandata_noNA$gdpgrowth)$out 

boxplot(country_cleandata$netexppergdp, xlab = "Netexppergdp", ylab="%", main = "Net exports per GDP Boxplot") 

boxplot.stats(country_cleandata_noNA$netexppergdp)$out 

boxplot(country_cleandata$fdipergdp, xlab = "fdipergdp", ylab="%", main = "FDI inflows per GDP Boxplot") 

boxplot.stats(country_cleandata_noNA$fdipergdp)$out 

boxplot(country_cleandata$incometax, xlab = "incometax", ylab="%", main = "Tax on income Boxplot") 

boxplot.stats(country_cleandata_noNA$incometax)$out 

boxplot(country_cleandata$tradetax, xlab = "tradetax", ylab="%", main = "Tax on international trade Boxplot") 

boxplot.stats(country_cleandata_noNA$tradetax)$out 

boxplot(country_cleandata$education, xlab = "education", ylab="%", main = "Average years of schooling Boxplot")  

boxplot.stats(country_cleandata_noNA$education)$out 



library(openxlsx) 

write.xlsx(country_cleandata, "CleanData_noNA.xlsx") 



country_cleandata_noNA<-read_excel('CleanData_noNA.xlsx') 

country_cleandata_noNA 

view(country_cleandata_noNA) 



# scatter plots for Gini and variables transformed with log 

plot(x = country_cleandata_noNA$logunemployment, y = country_cleandata_noNA$gini, 
     
     xlab = "Log Unemployment", 
     
     ylab = "Gini coefficient", 
     
     main = "Gini vs Log Unemployment rate")  



plot(x = country_cleandata_noNA$logeducation, y = country_cleandata_noNA$gini, 
     
     xlab = "Log education", 
     
     ylab = "Gini coefficient", 
     
     main = "Gini vs Log Average years of schooling") 



plot(x = country_cleandata_noNA$logincometax, y = country_cleandata_noNA$gini, 
     
     xlab = "Log income tax", 
     
     ylab = "Gini coefficient", 
     
     main = "Gini vs Log income tax") 



plot(x = country_cleandata_noNA$logtradetax, y = country_cleandata_noNA$gini, 
     
     xlab = "Log trade tax", 
     
     ylab = "Gini coefficient", 
     
     main = "Gini vs Log trade tax") 



# Boxplots of variables transformed with log 

boxplot(country_cleandata_noNA$logunemployment, xlab = "logunemployment", ylab="%", main = "log unemployment Boxplot") 

boxplot(country_cleandata_noNA$logincometax, xlab = "logincometax", ylab="%", main = "log income tax Boxplot") 

boxplot(country_cleandata_noNA$logtradetax, xlab = "logtradetax", ylab="%", main = "log trade tax Boxplot") 

boxplot(country_cleandata_noNA$logeducation, xlab = "logeducation", ylab="%", main = "log average years of schooling Boxplot") 



Part 3 (Quang Anh) 

install.packages("fpp2")  

install.packages("fpp3")  

install.packages("readxl") 

install.packages("dplyr") 




library(fpp2)  

library(fpp3) 

library(readxl) 




# Read the data 




country_cleandata <- read_excel("C:/Downloads/CleanData_noNA_noOUTL_FINAL.xlsx") 

View(country_cleandata) 

library(pastecs) 

stat.desc(country_cleandata) 




# Model 1: Multiple Linear Regression 

model1 <- lm(gini ~ inflation + unemployment + gdpgrowth + fdipergdp + netexppergdp + tradetax + education + incometax, data = country_cleandata) 

summary(model1) 




#t-test 

alpha <- 0.01 

mu<- 0 

n=156 




crit.t = qt(alpha/2,n-9) 

crit.t 


Part 3 (Kevin) 



#setwd("C:/Users/Kevin Tran/OneDrive/RMIT/Basic Econometric/ASM3")#PC 

setwd("C:/Users/Admin/OneDrive/RMIT/Basic Econometric/ASM3") #Laptop 

#Install Library 

install.packages("car") 

install.packages("zoo") 

install.packages("lmtest") 

install.packages("stargazer") 



library(fpp2) 

library(fpp3) 

library(readxl) 

library(car) 

library(lmtest) 

library(stargazer) 



#import the clean dataset from excel and save it in R format 

country_cleandata<-read_excel('CleanData_noNA_noOUTL_FINAL.xlsx') 

attach(country_cleandata) 



#model1 

model1 <- lm(gini~inflation + unemployment + gdpgrowth + fdipergdp + netexppergdp + incometax + tradetax + education) 

summary(model1) 



#test for multicollinearity 

round(cor(country_cleandata[,c('inflation', 'unemployment', 'gdpgrowth', 'fdipergdp', 'netexppergdp', 'incometax', 'tradetax', 'education')]), digit=2) 

vif(model1) 

round(vif(model1), digits=3) 

#=> dont have multicollinearity 



#test for heteroskedasticity 

bptest(model1) #=> have heteroskedasticity 



#model2 

model2 <- lm(log(gini)~inflation + log(unemployment) + gdpgrowth + fdipergdp + netexppergdp + log(incometax) + tradetax + log(education)) 

summary(model2) 

bptest(model2) 



stargazer(model1, model2, type="text") 

stargazer(model1, model2, out="model1n2.txt") 



#African bindary 

country_cleandata$african <- ifelse(country_cleandata$region == "Africa", 1, 0) 



model3 <- lm(gini~inflation + unemployment + gdpgrowth + fdipergdp + netexppergdp + incometax + tradetax + education + african) 

summary(model3) 



stargazer(model3, type="text") 

stargazer(model3, out="model3.txt") 

#Endogenous 







