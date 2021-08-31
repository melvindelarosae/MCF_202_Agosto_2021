#Tarea 3
#Melvin Isac De La Rosa Estrada
# Matrícula 1634380

#Medidas de Tendencia Central 


# Problema 1 --------------------------------------------------------------
#Aplicar las siguientes formulas para cada caso: 
#las funcionessum(∑) yprod(∏) estandisponibles en R

#funciones Sum y Prod 

Xi <- c(6,4,1,3)
Yi <- c(1,3,4,2)

# ∑4i=1xi
sum(Xi)

# ∑4i=1xiyi
sum(Xi*Yi)

# ∏4i=1xi
prod(Xi)

# ∏4i=1xiyi
prod(Xi*Yi)

# ∏4i=1=x2iy0.5
prod(Xi^2*Yi^0.5)

# Problema 2 --------------------------------------------------------------

grupoA <- c(80,90,90,100)
grupoB <- c(60,65,65,70,70,70,75,75,80,80,80,80,80,85,100)

# el grupo que tiene la altura media mayor, a mi parecer sin hacer
# calculos previos es: grupoA

#media para cada grupo

mean(grupoA)
mean(grupoB)

# Coincide con su primera impresión: Si


# Problema 3 --------------------------------------------------------------

#José quiere tener un promedio de 80 en sus 4 exámenes. 
#Cada examen se califica en una escalade 0 a 100. 
#Sus primeros tres exámenes son: 87, 72, 85. 
#¿Qué necesita José para calificar en el 4to. 
#examen para tener una media de 80 en los 4 exámenes?

#Respuesta: una califiación de 76

(87+72+85+76)/4


# Problema 4 --------------------------------------------------------------

#El comité escolar de una pequeña ciudad quiere determinar 
#el número promedio de niños porhogar en su ciudad. 
#Hay 50 hogares en la ciudad. Ellos dividen el total número de niños 
#en laciudad por 50 y determine que el número promedio de niños 
#por hogar es 2.2. ¿Cuál de losiguientes enunciados debe ser verdad?

# b) hay un total de 110 niños en la ciudad 


# Problema 5 --------------------------------------------------------------

Germinaciones <- c(5,6,7,8,9)
Cajasp <- c(1,3,5,3,1)

#a) ¿Qué tipo de gráfico podrías usar para visualizar estos datos?
plot(Germinaciones,Cajasp)
barplot(Cajasp)
#b) ¿Cuál es la media? Muestre su trabajo o código, 
#o explique cómo obtuvo su respuesta.

mean(Germinaciones)
mean(Cajasp)
#c)¿Cuál es la mediana? Muestre su trabajo o código,
#o explique cómo obtuvo su respuesta.

median(Germinaciones)
median(Cajasp)

# Problema 6 --------------------------------------------------------------

getmoda <-function(v) {
  uniqv <- unique(v)
                  uniqv[which.max(tabulate(match(v,uniqv)))]
}


set <- c(2,2,3,6,10)

#a) Calcule la moda, la mediana y la media.

getmoda(set)
median(set)
mean(set)
#b)
set5 <- set+5
getmoda(set5)
median(set5)
mean(set5)
#c) cómo crees que la moda, la mediana y la media se ven afectadas 
#cuando se agrega la misma constante a cada valorde datos 
#en un conjunto?
# Respuesta: la posición de la moda y la mediana no tienen cambios
# pero los valores se incrementan 

#d)
setx <- set*5
getmoda(setx) 
median(setx)
mean(setx)


# Problema 7 --------------------------------------------------------------

#a) enumere 5 digitos que tengan una mediana de 7 y una media de 7
# 3,9,7,8,8
(3+9+7+8+8)/5

# 5,8,7,9,6
(5+8+7+9+6)/5


#b) enumere 5 digitos que tengan una mediana de 7 y una media inferior a 7

# 5,9,7,8,5
(5+9+7+8+5)/5

# 3,1,7,3,4
(4+9+7+8+5)/5
