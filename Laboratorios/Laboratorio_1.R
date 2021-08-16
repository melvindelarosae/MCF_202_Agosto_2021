#Laboratorio 1
#Melvin Isac De La Rosa Estrada
#Número de matrícula 1634380

# facturas mensuales  -----------------------------------------------------

#gastos totales
300+240+1527+400+1500+1833

Celular <- 300
Celular
transporte <- 240
transporte
comestibles <- 1527
comestibles
gimnasio <- 400
gimnasio
alquiler <- 1500
alquiler
otros <- 1833
otros

gastos <- Celular+transporte+comestibles+gimnasio+alquiler+otros

gastos*5
gastos*10


# nombre de los objetos  --------------------------------------------------

#yo_uso_guion_bajo
#otras.personas.usan.punto
#OtrosUsanMayusculas

# no se puede iniciar con un numero 

#5variable <- 5
# no se puede iniciar con gión bajo
#_invalid <-10
# no puede contener una coma 
#my,variable <- 3
# no puede contener espacios 
#my variable <- 1
# es correcto pero muy largo
#this_is_a_really_long_name <- 3.5

# Funciones  --------------------------------------------------------------

# valor absoluto (absolute value)
abs(10)
abs(-4)
#raiz cuadrada
sqrt(9)
#logaritmo natural (natural logarithm)
log(2)

# distingue mayusculas y minisculas  --------------------------------------

CELULAR <- 8000
CELULAR-Celular 

# obtener ayuda  ----------------------------------------------------------

# documentación acerca de la función abs 
help(abs)
help(mean)

#buscar absolute

??absolute

# autoevaluación ----------------------------------------------------------

Gastos <- c(Celular,transporte,comestibles,gimnasio,alquiler,otros)
help(sort)
barplot(Gastos)
sort(Gastos)
GASTOS <- sort(Gastos)
barplot(GASTOS)
help("barplot")
