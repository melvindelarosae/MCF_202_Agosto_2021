#Tarea 7 Comparación de medias 
#Melvin Isac De La Rosa Estrada
#matrícula 1634380


#datos 

costal <- c(87.7,80.01,77.28,78.76,81.52,74.2,80.71,79.5,
            77.87,81.94,80.7,82.32,75.78,80.19,83.91,79.4,
            77.52,77.62,81.4,74.89,82.95,73.59,77.92,77.18,
            79.83,81.23,79.28,78.44,79.01,80.47,76.23,78.89,
            77.14,69.94,78.54,79.7,82.45,77.29,75.52,77.21,
            75.99,81.94,80.41,77.7)

n <- length(costal)
n

costa.media <- mean(costal)
costa.media

costa.sd <- sd(costal)
costa.sd

costa.se <- costa.sd / sqrt(n)
costa.se

costa.T <- (costa.media - 80) / costa.se
costa.T

pt(costa.T, df = n-1)

t.test(costal, mu = 80)

# Ejercicio 1 -------------------------------------------------------------

#¿cuál es el valor de p?
#R= 0.01132175

#¿cuántos grados de libertad tiene el experimento?
#R= 43

#¿Cuál es la hipotesis aceptada?
#H1

#¿existe evidencia de que e valor medio del producto promedio
# de los costales observados es menor a los que anuncia 
#el producto?
#R= si

# intervalos =  77.98157 79.83980


# Ejercicio 2 -------------------------------------------------------------

azufre <- c(15.8,22.7,26.8,19.1,18.5,14.4,8.3,25.9,26.4,9.8,
            22.7,15.2,23.0,29.6,21.9,10.5,17.3,6.2,18.0,22.9,
            24.6,19.4,12.3,15.9,11.2,14.7,20.5,26.6,20.1,17.0,
            22.3,27.5,23.9,17.5,11.0,20.4,16.2,20.8,13.3,18.1)

length(azufre)
t.test(azufre, mu = 17.5)

#¿cuál es el valor de p?
#R= 0.1893

#¿cuáles son los intervalos de confianza al 95%?
#R= 16.87912 20.53588

#¿cuántos grados de libertad tiene el experimento?
#R= 39

#¿cuál esla hipótesis aceptada?
#R= H0

#¿Existe evidencia de que el valor medio promedio 
#de las emisiones observadas es mayor (significativamente) 
#a la declarada en los procedimientos de seguridad de laempresa?
#R= no


# Ejercicio 3 ------------------------------------------------------------
file <- paste0("https://raw.githubusercontent.com/mgtagle/MCF-202_Agosto_2021/main/TEMPAIRE_DIA.csv")
temperatura <- read.csv(file)
head(temperatura)

t.test(temperatura$temp_media, mu= 24)

#¿cuál es el valor de p?
#R= 0.03615

#¿cuáles son los intervalos de confianza al 95%?
#R= 23.28216 23.97599

#¿cuántos grados de libertad tiene el experimento?
#R= 845

#¿cuál esla hipótesis aceptada?
#R= H1

#¿existe evidencia de que el valor medio promedio de la temperatura
#observada es mayor a la establecida?
#no