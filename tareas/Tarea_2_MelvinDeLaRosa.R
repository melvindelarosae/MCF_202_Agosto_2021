# Tarea 2
# Melvin Isac De La Rosa Estrada
# matricula 1634380


# importar datos de trabajo -----------------------------------------------

# cuadro 1: Conjunto de datos que contiene información colectada de 50 árboles

library(repmis)
conjunto <- source_data("https://www.dropbox.com/s/hmsf07bbayxv6m3/cuadro1.csv?dl=1")
head(conjunto)

conjunto

#selección de datos

mean(conjunto$Altura)

H.Media <- subset(conjunto, Altura <= mean(conjunto$Altura))
H.Media

H.16 <- subset(conjunto, Altura < 16.5)
head(H.16)

Vecinos.3 <- subset(conjunto, Vecinos <= 3)
head(Vecinos.3)
Vecinos.4 <- subset(conjunto, Vecinos > 4)
head(Vecinos.4)

mean(conjunto$Diametro)
DBH.media <- subset(conjunto, Diametro < mean(conjunto$Diametro))
head(DBH.media)

DBH.16 <- subset(conjunto, Diametro > 16)
head(DBH.16)

subset(conjunto, Especie=="C", select = c(Especie))
subset(conjunto, Especie=="F", select = c(Especie))
subset(conjunto, Especie=="H", select = c(Especie))

#Visualización de datos 

hist(conjunto$Altura, main = "Datos de Altura", ylab = "número de arboles", xlab = "Alturas")
hist(H.Media$Altura, main = "Alturas iguales o menores a la media", ylab = "número de arboles", xlab = "Alturas")
hist(H.16$Altura, main = "Alturas menores a 16.5 metros", ylab = "número de arboles", xlab = "Alturas")

hist(conjunto$Vecinos, main = "Vecinos", ylab = "número de árboles", xlab = "vecinos")
hist(Vecinos.3$Vecinos, main = "Número de vecinos iguales o menores a 3", ylab = "número de árboles", xlab = "vecinos")
hist(Vecinos.4$Vecinos, main = "Número de vecinos mayores a 4", ylab = "número de árboles", xlab = "vecinos")

hist(conjunto$Diametro, main = "Datos de Diámetro", ylab = "número de arboles", xlab = "diámetros")
hist(DBH.media$Diametro, main = "Dámetros iguales o menores a la media", ylab = "número de arboles", xlab = "diámetros")
hist(DBH.16$Diametro, main = "Diámetros mayores a 16.5m", ylab = "número de arboles", xlab = "diámetros")

#Estadisticas básicas

mean(conjunto$Altura)
sd(conjunto$Altura)
mean(H.Media$Altura)
sd(H.Media$Altura)
mean(H.16$Altura)
sd(H.16$Altura)

mean(conjunto$Diametro)
sd(conjunto$Diametro)
mean(DBH.media$Diametro)
sd(DBH.media$Diametro)
mean(DBH.16$Diametro)
sd(DBH.16$Diametro)

mean(conjunto$Vecinos)
sd(conjunto$Vecinos)
mean(Vecinos.3$Vecinos)
sd(Vecinos.3$Vecinos)
mean(Vecinos.4$Vecinos)
sd(Vecinos.4$Vecinos)
