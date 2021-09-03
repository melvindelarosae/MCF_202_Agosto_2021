# Tarea 5 Correlación 
# Melvin Isac De La Rosa Estrada
# matrícula: 1634380


# ejercicio 1 -------------------------------------------------------------

#Abundancia de las efímeras de un arroyo 
#y la velocidad de la corriente de un arroyo.

speed <- c(2,3,5,9,14,24,29,34)
abund <- c(6,3,5,23,16,12,48,43)

plot(speed, abund, pch = 20)

cor.test(speed, abund)
#alternative hypothesis
# p-value = 0.008393
# cor 0.8441408 

efimeros <- data.frame(speed, abund)

ef.lm <- lm(efimeros$abund ~ efimeros$speed)
summary(ef.lm)

# Es estadísticamentesignificativa la correlación?
# R: Si es significativa 

# Por lo tanto, Existe una correlación positiva entre la velocidad
# de los arroyos y la abundancia de efímeras 


# ejercicio 2 -------------------------------------------------------------

# introducir datos

pH <- c(5.40,5.65,5.14,5.14,5.14,5.10,4.70)
N <- c(0.188,0.165,0.260,0.169,0.164,0.094,0.100)
Dens <- c(0.92,1.04,0.95,1.10,1.12,1.22,1.52)
P <- c(215,208,300,248,174,129,117)
Ca <- c(16.35,12.25,13.02,11.92,14.17,8.55,8.74)
Mg <- c(7.65,5.15,5.68,7.88,8.12,6.92,8.16)
K <- c(0.72,0.71,0.68,1.09,0.70,0.81,0.39)
Na <- c(1.14,0.94,0.60,1.01,2.17,2.67,3.32)
conduc <- c(1.09,1.35,1.41,1.64,1.85,3.18,4.16)

estructura <- data.frame(pH, N, Dens, P, Ca, Mg, K, Na, conduc)


# coeficiente de correlación ----------------------------------------------

cor.test(estructura$pH, estructura$N)
#p-value = 0.3896
#cor 0.3881145

cor.test(estructura$pH, estructura$Dens)
#p-value = 0.04157
#cor -0.7729399

cor.test(estructura$pH, estructura$P)
#p-value = 0.3474
#cor 0.420612 

cor.test(estructura$pH, estructura$Ca)
#p-value = 0.183
#cor 0.5684873

cor.test(estructura$pH, estructura$Mg)
#p-value = 0.1448
#cor -0.6111533

cor.test(estructura$pH, estructura$K)
#p-value = 0.4127
#cor 0.3709419

cor.test(estructura$pH, estructura$Na)
#p-value = 0.07301
#cor -0.711438

cor.test(estructura$pH, estructura$conduc)
#p-value = 0.03024
#cor -0.8013901 

r <- c(0.3881145,-0.7729399,0.420612,0.5684873,-0.6111533,0.3709419,
       -0.711438)
vP <- c(0.3896,0.04157,0.3474,0.183,0.1448,0.4127,0.07301)

conjuntos = c("pH-N","pH-Dens","pH-P","pH-Ca","pH-Mg","pH-K","pH-Na")

Conjunto <- data.frame(conjuntos, r, vP)

Conjunto


