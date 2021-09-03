#laboratorio 5 Correlación
# Melvin Isac De La Rosa Estrada
# matrícula: 1634380

# Generar los gráficos de distribución de puntos ára cada par de datos

#graficar un cuadro de 2x2

op = par(mfrow = c(2, 2), mar = c(4.5, 4, 1, 1))

plot(anscombe$x1, anscombe$y1, pch = 20)

plot(anscombe$x2, anscombe$y2, pch = 20)

plot(anscombe$x3, anscombe$y3, pch = 20)

plot(anscombe$x4, anscombe$y4, pch = 20)

par(op)


# 1 -----------------------------------------------------------------------

cor.test(anscombe$x1, anscombe$y1)
#alternative hypothesis
#p-value = 0.00217
#cor 0.8164205
#df = 9
ans1.lm <- lm(anscombe$y1 ~ anscombe$x1)
summary(ans1.lm)


# 2 -----------------------------------------------------------------------

cor.test(anscombe$x2, anscombe$y2)
#alternative hypothesis
#p-value = 0.002179
#cor 0.8162365
#df = 9
ans2.lm <- lm(anscombe$y2 ~ anscombe$x2)
summary(ans2.lm)


# 3 -----------------------------------------------------------------------

cor.test(anscombe$x3, anscombe$y3)
#alternative hypothesis
#p-value = 0.002179
#cor 0.8162365
#df = 9
ans3.lm <- lm(anscombe$y3 ~ anscombe$x3)
summary(ans3.lm)


# 4 -----------------------------------------------------------------------

cor.test(anscombe$x4, anscombe$y4)
#alternative hypothesis
#p-value = 0.002179
#cor 0.8162365
#df = 9
ans4.lm <- lm(anscombe$y4 ~ anscombe$x4)
summary(ans3.lm)


# resultados --------------------------------------------------------------


# los cuatro pares de las variablesxytienen 
# básicamente la mismacorrelación de 0.816. 
# Pero no todos tienen diagramas de dispersión 
# en los que los puntos se agrupanalrededor de una línea

