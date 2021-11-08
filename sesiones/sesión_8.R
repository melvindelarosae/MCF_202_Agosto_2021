#Sesión 8
#Melvin Isac De La Rosa Estrada

sitio <- 1:10
arena <- c(6,10,8,6,14,17,9,11,7,11)
arcilla <- c(17,15,3,11,14,12,12,8,10,13)
limo <- c(13,16,9,12,15,16,17,13,18,14)

y.prod <- c(arena, arcilla, limo)
y.prod

suelo <- gl(3,10,30, labels = c("arena", "arcilla", "limo"))

produc <- data.frame(suelo, y.prod)
produc

# funcion tapply function 
#revisa las medias de los tratamientos 

tapply(produc$y.prod, produc$suelo, length)
tapply(produc$y.prod, produc$suelo, mean)

#al revisar las medias, parece que el suelo limo tiene mayor produc
# revisar si existe una diferencia significativa 
# revisar la varianza, homogeneidad 

tapply(produc$y.prod, produc$suelo, var)
# se revisan las varianzas, saber si existe esa difrencia es significativa
# cuando se tiene un solo grupo se usa var.test

#revisar si existen diferencias entre las varianzas de los tres tratamientos
# barlett.test

bartlett.test(produc$y.prod, produc$suelo)

#la diferencia entre varianzas no es significativa 

#prueba fligner.test sirve para medir la homogeneidad de varianzas

fligner.test(produc$y.prod, produc$suelo)

#principal prueba que se tiene que hacer

boxplot(produc$y.prod ~ produc$suelo)

#en la ispeccion visual se puede ver que pueden existir diferencias 
# entre los extremos 

# anova en R

prod.aov <- aov(produc$y.prod ~ produc$suelo)

summary(prod.aov)

#suma de cuadrados del total SCT
SCT <- sum((produc$y.prod - mean(produc$y.prod))^2)
SCT

arena-mean(arena)
arcilla-mean(arcilla)
limo-mean(limo)

arena.sum <- sum((arena-mean(arena))^2)
arcilla.sum <- sum((arcilla-mean(arcilla))^2)
limo.sum <- sum((limo-mean(limo))^2)

SCE <- sum(arena.sum + arcilla.sum + limo.sum)
SCE

# SCTr = SCT - SCE
SCT - SCE

probF <- 1-pf(4.24, 2,27)
probF

ftab <- qf(0.95,2,27)
ftab

# diferencias significativas entre los tratamientos 
#tukey test 

TukeyHSD(prod.aov, conf.level = 0.95)
# calcula las diferencias entre las medias de los tratamientos
mean(arcilla)-mean(arena)
# te arroja el valor de p para saber si es significativa la diferencias 
#si los intervalos cruzan el 0 no hay diferencias significativas 

plot(TukeyHSD(prod.aov))
