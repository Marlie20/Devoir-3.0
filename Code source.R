library(tidyverse)
library(readxl)

#Importation du fichier excel
Data <- read_excel("C:/Users/Admin/Desktop/UNIQ-Cours/Logiciel R/Donn�es devoir.xlsx")
View(Data)

#Graphe en b�ton
barplot(Data$`Taux change`, names = Data$Ann�e, xlab="Ann�e", ylab= "Taux de change", main = "�volution du taux de change", col = c(2, 7))

#Graphe en nuage de points
dotchart(Data$`Ann�e`, labels =Data$`Taux d'inflation`, color = "red", pch = 16)

#Graphe en cercle
pie(Data$`PIB per capita`, label = Data$Ann�e, col=rainbow(9), main = "�volution du PIB per capita")


#R�gression lin�aire simple
print(Data)
attach(Data)

##PIB per capita et taux de change
Mod�le<-lm(formula=Data$`Taux d'inflation` ~ Data$`Taux change`)
summary(Mod�le)
confint.default(Mod�le)

##Taux d'inflation et taux de change
Mod�le<-lm(formula=Data$`Taux d'inflation` ~ Data$`Taux change`)
summary(Mod�le)
confint.default(Mod�le)

