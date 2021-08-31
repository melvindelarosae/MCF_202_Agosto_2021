# Sesión 4
# Melvin Isac De La Rosa Estrada
# Matrícula 1634380

setwd("C:/Estadistica_MCF_202/MCF_202_Agosto_2021/sesiones")
Cedro.R <- read.csv("cedro-rojo.csv", header = TRUE)
head(Cedro.R)

#Revisión de datos, gráfica y de normalidad 

boxplot(Cedro.R$diametro)
boxplot(Cedro.R$altura)

#validacion de la normalidad
shapiro.test(Cedro.R$diametro) # variable no normal

hist(Cedro.R$diametro)
shapiro.test(Cedro.R$altura) # variable normal

#para la variable se aplica una transformacion a traves de una 
# transformacion logaritmica 

Cedro.R$dia.log <- log(Cedro.R$diametro + 1)

shapiro.test(Cedro.R$dia.log)
hist(Cedro.R$dia.log)

#realizar otra transformacion por raiz cuadrada

Cedro.R$dia_al2 <- sqrt(Cedro.R$diametro + 0.5)

shapiro.test(Cedro.R$dia_al2)
hist(Cedro.R$dia_al2)

#Prueba de correlacion 

cor.test(Cedro.R$diametro, Cedro.R$altura)

#realizar un subset, un subconjunto de la BD con diametros menor a 16

Cedro.R.16 <- subset(Cedro.R, Cedro.R$diametro <16)

boxplot(Cedro.R.16$diametro)

shapiro.test(Cedro.R.16$diametro)

cor.test(Cedro.R.16$diametro, Cedro.R.16$altura)

plot(Cedro.R.16$diametro, Cedro.R.16$altura)

#ejemplo 2


canopy <- read.csv("canopy.csv", header = TRUE)

cbe <- subset(canopy, canopy$Forest=="CBE")

plot(cbe$Cnpy, cbe$LAI4)

cor.test(cbe$Cnpy, cbe$LAI4)

cor.test(cbe$Cnpy, cbe$GLI)

plot(cbe$Cnpy, cbe$GLI)
