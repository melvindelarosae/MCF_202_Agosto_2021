#Sesión 7
#prueba de T de forma independiente 

#importar datos 

canopy <- read.csv("sesiones/canopy.csv", header = T)

cbe <- subset(canopy, canopy$Forest == "CBE")
head(cbe)
csr <- subset(canopy, canopy$Forest == "CSR")

boxplot(canopy$Cnpy ~ canopy$Forest)

#prueba de normalidad
shapiro.test(canopy$Cnpy)


#homogeneidad de varianzas 
cbe <- subset(canopy, canopy$Forest == "CBE")
head(cbe)
csr <- subset(canopy, canopy$Forest == "CSR")


var(cbe$Cnpy); var(csr$Cnpy)

var.test(canopy$Cnpy ~ canopy$Forest)
var.test(cbe$Cnpy, csr$Cnpy)
#se cumplen ambas condiciones

#prueba de T

t.test(canopy$Cnpy ~ canopy$Forest, var.equal = TRUE)

#para comprobar si los porcentajes son diferentes se aplica alternative = "less"

t.test(canopy$Cnpy ~ canopy$Forest, var.equal = TRUE, alternative = "less")


#LAl4

boxplot(canopy$LAI4 ~ canopy$Forest)

shapiro.test(canopy$LAI4)

var(cbe$LAI4);var(csr$LAI4)

var.test(cbe$LAI4, csr$LAI4)

t.test(canopy$LAI4 ~ canopy$Forest, var.equal = FALSE)

t.test(canopy$LAI4 ~ canopy$Forest, var.equal = FALSE, alternative = "less")


produccion <- read.csv("sesiones/mainproduccion.csv", header = T)
head(produccion)
summary(produccion)
is.factor(produccion$Tiempo)

produccion$Tiempo <- as.factor(produccion$Tiempo)
summary(produccion)

boxplot(produccion$Kgsem ~ produccion$Tiempo)

shapiro.test(produccion$Kgsem)

var.test(produccion$Kgsem ~ produccion$Tiempo)

t2012 <- subset(produccion, produccion$Tiempo == "T2012")
t2013 <- subset(produccion, produccion$Tiempo == "T2013")
# ver varianzas para cada año 
t.test(produccion$Kgsem ~ produccion$Tiempo, paired = TRUE)

mean(t2012$Kgsem)
mean(t2013$Kgsem)
