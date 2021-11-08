#Tarea 9 Análisis de Varianza 
#Melvin Isac De La Rosa Estrada
#matrícula 1634380


# Ejercicio 1 -------------------------------------------------------------


j.1 <- c(127,166,136,182,133)
j.2 <- c(162,156,123,136,127)
j.3 <- c(155,140,125,115,117)
j.4 <- c(124,95,88,97,98)
j.5 <- c(169,147,166,157,169)

y.nem <- c(j.1,j.2,j.3,j.4,j.5)
y.nem  

suelo <- gl(5,5,25, labels = c("J=1", "J=2", "J=3", "J=4", "J=5"))
suelo


nematodos <- data.frame(y.nem, suelo)

nematodos

tapply(nematodos$y.nem, nematodos$suelo, length)
tapply(nematodos$y.nem, nematodos$suelo, mean)

tapply(nematodos$y.nem, nematodos$suelo, var)


bartlett.test(nematodos$y.nem, nematodos$suelo)

fligner.test(nematodos$y.nem, nematodos$suelo)


boxplot(nematodos$y.nem ~ nematodos$suelo)


nem.aov <- aov(nematodos$y.nem ~ nematodos$suelo)
summary(nem.aov)



TukeyHSD(nem.aov, conf.level = 0.95)


plot(TukeyHSD(nem.aov))



# Ejercicio 2 -------------------------------------------------------------

bajo <- c(9,11,6,7,6,5)
medio <- c(14,17,19,14,17,15)
alto <- c(28,31,32,44,38,37)

y.rie <- c(bajo,medio,alto)

riego <- gl(3,6,18, labels = c("Bajo", "Medio", "Alto"))

crecimiento <- data.frame(y.rie, riego) 
crecimiento

tapply(crecimiento$y.rie, crecimiento$riego, length)
tapply(crecimiento$y.rie, crecimiento$riego, mean)
tapply(crecimiento$y.rie, crecimiento$riego, var)

bartlett.test(crecimiento$y.rie, crecimiento$riego)

fligner.test(crecimiento$y.rie, crecimiento$riego)

boxplot(crecimiento$y.rie ~ crecimiento$riego)

crec.aov <- aov(crecimiento$y.rie ~ crecimiento$riego)
summary(crec.aov)

TukeyHSD(crec.aov, conf.level = 0.95)


plot(TukeyHSD(crec.aov))
