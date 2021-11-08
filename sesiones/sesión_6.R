#sesión 6
#Melvin Isac De La Rosa Estrada

canopy <- read.csv("sesiones/canopy.csv", header = T)

cbe <- subset(canopy, canopy$Forest == "CBE")
head(cbe)
mean(cbe$Cnpy)

#media teoretica de 27%
#media observada 29.11 

#establecer la hipotesis nula 
#" no existe una diferencias entre la media teoretica 
# y la media observada"

# " la media teoretica es igual a la media de la apertura
# del dosel despues de las intervenciones"

t.test(cbe$Cnpy, mu=28.4)
fivenum(cbe$Cnpy)

boxplot(canopy$Cnpy)

mean(cbe$GLI)

#mu= 30%

t.test(cbe$GLI, mu=30)

#si la media obs es menor  (estadisticamente)
# comparada con la media teoretica

t.test(cbe$GLI, mu=30, alternative = "less")

# media teoretica es 27

t.test(cbe$GLI, mu=27, alternative = "greater")


