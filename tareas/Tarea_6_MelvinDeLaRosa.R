#Tarea 6 Regresión lineal 
#Melvin Isac De La Rosa Estrada
# matrícula 1634380


# ejercicio 1 -------------------------------------------------------------

#importar datos

setwd("C:/Estadistica_MCF_202/MCF_202_Agosto_2021/tareas")

erupciones <- read.csv("erupciones.csv", header = TRUE)
head(erupciones)

plot(erupciones, pch = 20)

mean(erupciones$eruptions)
sd(erupciones$eruptions)
var(erupciones$eruptions)

mean(erupciones$waiting)
sd(erupciones$waiting)
var(erupciones$waiting)


cor.test(erupciones$eruptions, erupciones$waiting)

erupciones$xmn <- erupciones$waiting - mean(erupciones$waiting, 2)
erupciones$ymn <- erupciones$eruptions - mean(erupciones$eruptions, 2)

erupciones$xmn2 <- round((erupciones$waiting - mean(erupciones$waiting))^2,2)

beta <- (sum(erupciones$xmn * erupciones$ymn))/sum(erupciones$xmn2)

alfa <- mean(erupciones$eruptions)- (beta*mean(erupciones$waiting))

erupciones$ypr <- alfa + (beta*erupciones$waiting)

erupciones.lm <- lm(erupciones$eruptions ~ erupciones$waiting)
summary(erupciones.lm)


erup <- c(3.60,1.80,3.33,2.28,4.53)
wait <- c(80,40,45,53,61)

erupciones2 <- data.frame(erup, wait)
erupciones2$xmn <- erupciones2$wait - mean(erupciones2$wait, 2)
erupciones2$ymn <- erupciones2$erup - mean(erupciones2$erup, 2)
erupciones2$xmn2 <- round((erupciones2$wait - mean(erupciones2$wait))^2, 2)

beta <- (sum(erupciones2$xmn * erupciones2$ymn))/sum(erupciones2$xmn2)
alfa <- mean(erupciones2$erup)- (beta*mean(erupciones2$wait))

erupciones2$ypr <- alfa + (beta*erupciones2$wait)

erupciones2
