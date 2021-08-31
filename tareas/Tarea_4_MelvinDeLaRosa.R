#Tarea 4
#boxplot e histogramas
#Melvin Isac De La Rosa Estrada
#Matrícula: 1634380


# Problema 1 --------------------------------------------------------------


set.seed(9875)
size <- 1000
x2 <- round(runif(n = size, min = 0, max = 10), 2)
x2

hist(x2, col = "#001a4d", las = 1, breaks = c(0,2,4,6,8,10))

x3 <- round(runif(n = size,min = 0, max = 10), 2)
x3
hist(x3, col = "#4d88ff", las = 1, breaks = c(0,1,2,4,7,10))

# Problema 2 --------------------------------------------------------------

#a. ¿Cuál distribución parece estar sesgada a la derecha?
#R: D

#b. ¿Cuál distribución parece estar sesgada a la izquierda?
#R: A

#c. ¿Cuál distribución parece ser simétrica o en forma de “campana”?
#R: C

#d. ¿Cuál distribución parece ser bimodal?
#R: B

#e. ¿Cuál distribución parece mostrar una falta de intervalos?
#R: C


# Problema 3 --------------------------------------------------------------

mags <- hist(quakes$mag, xaxt = "n",
             breaks = c(4.0,4.2,4.4,4.6,4.8,5.0,5.2,5.4,5.6,5.8,6.0,6.2,6.4),
             col = "#99bbff", xlab = "Magnitud de terremotos",
             ylab = "Frecuencias",
             main = "",
             las = 1,
             ylim = c(0,260))
axis(1, mags$mids)
length(quakes$mag)
help("hist")

quakes.hist <- hist(quakes$mag)
quakes.hist

quakes.hist$breaks

#a. ¿Cómo describiría la forma de 
#   esta distribución de las magnitudes de los terremotos?
#R: es una distribución con sesgo a la izquierda, sesgo positivo

#b. Mencione un intervalo donde ocurren tipicamente las magnitudes.
#R: en el intervalo 4.5

#c. Determine el rango de las magnitudes (Range = Max - Min).
#R: Max: 6.4, Min:4.0
range(quakes$mag)

#d. ¿Qué porcentaje de los terremotos 
#   ocurren con magnitud en la clase 5.3 (5.1 : 5.4)?
#R: 7.2%

#e. ¿Qué porcentaje de los terremotos tiene una 
#magnitud igual o mayor a 5.0?
#R:15.1%

#f. ¿Qué porcentaje de los terremotos tienen una 
#magnitud menor o igual a 4.6?
#R:41.5
# Problema 4 --------------------------------------------------------------

# ¿Qué porcentaje de las observaciones en una distribución se encuentran
# entre el primer y el tercercuartil?
#R: 50%


# Problema 5 --------------------------------------------------------------

#a. ¿Cuál especie tiene el diámetro más pequeño?
#R: C

#b. ¿Cuál especie tiene el diámetro más grande?
#R: F

#c. ¿Cuál especie tiene el diámetro mínimo más alto?
#R: F

#d. ¿Cuál especie tiene la mediana de diámetro más pequeña?
#R: C

#e. ¿Cuál especie tiene la mediana de diámetro mas grande?
#: H

#f. ¿Cuál especie tiene el menor rango de diámetro?
#R: F

#g. ¿Cuál especie tiene el rango intercuantil (Q3-Q1) mas grande?
#R: C

#h. ¿Cuál especie tiene el rango intercuantil (Q3-Q1) mas pequeño?
#R: F

#i. ¿Cuál especie tiene una distribución simétrica?
#R: H

#j. ¿Cuál especie tiene el sesgo positivo (ver Fig. 2) más marcado ?
#R: F


# Problema 6 --------------------------------------------------------------

fires <- c(78,44,48,105,126,181,277,210,155)
fires

#Valor máximo
max(fires)
#valor minimo 
min(fires)
#Rango
range(fires)
#Q1
quantile(fires, 0.25)
#Q2
quantile(fires, 0.5)
#Q3
quantile(fires,0.75)
#media
mean(fires)
#desviación estándar
sd(fires)
#varianza
var(fires)

#boxplot

boxplot(fires, xlab = "Número de incendios en México del 1 de enero al 4 de marzo 2021" ,
        main = "Número de Incendios ocurridos por semana", 
        col = "#b3ccff",
        horizontal = 1)
