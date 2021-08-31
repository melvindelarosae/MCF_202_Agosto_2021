# Sesion 5
#30 de agosto 2021
#Melvin isac De La Rosa 


Diam <- c(15,14,13,12,9,8)
alt <- c(8,7,7,6,5,4)

prb <- data.frame(Diam, alt)

plot(Diam, alt)

cor.test(Diam, alt)


prb$xmn <- round(prb$Diam - mean(prb$Diam),2)

prb$ymn <- round(prb$alt - mean(prb$alt),2)

prb$xmn2 <- round((prb$Diam - mean(prb$Diam))^2,2)

beta <- (sum(prb$xmn * prb$ymn))/sum(prb$xmn2)
beta

#comando round(),2 para redondear 
#calcular alpha

alfa <- mean(prb$alt)- (beta*mean(prb$Diam))

#calacular Yprima 

prb$ypr <- alfa + (beta*prb$Diam)
prb$res <- prb$alt - prb$ypr


prb.lm <- lm(prb$alt ~ prb$Diam)
summary(prb.lm)

plot(Diam, alt, pch = 19)
abline(prb.lm,)

prb.lm2 <- anova(prb.lm)
prb.lm2
