library(tidyverse)
library(readxl)

#Importation du fichier excel
Data <- read_excel("C:/Users/Admin/Desktop/UNIQ-Cours/Logiciel R/Données devoir.xlsx")
View(Data)

#Graphe en bâton
barplot(Data$`Taux change`, names = Data$Année, xlab="Année", ylab= "Taux de change", main = "Évolution du taux de change", col = c(2, 7))

#Graphe en nuage de points
dotchart(Data$`Année`, labels =Data$`Taux d'inflation`, color = "red", pch = 16)

#Graphe en cercle
pie(Data$`PIB per capita`, label = Data$Année, col=rainbow(9), main = "Évolution du PIB per capita")


#Régression linéaire simple
print(Data)
attach(Data)

##PIB per capita et taux de change
Modèle<-lm(formula=Data$`Taux d'inflation` ~ Data$`Taux change`)
summary(Modèle)
confint.default(Modèle)

##Taux d'inflation et taux de change
Modèle<-lm(formula=Data$`Taux d'inflation` ~ Data$`Taux change`)
summary(Modèle)
confint.default(Modèle)

