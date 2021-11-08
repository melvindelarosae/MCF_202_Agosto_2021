#Tarea 8 Comparación de medias 
#Melvin Isac De La Rosa Estrada
#matrícula 1634380

# Ejercicio1 --------------------------------------------------------------

# ingresar datos 

Grupo <- gl(2, 12, labels = c("Fotografía", "Araña"))
Ansiedad <- c(30, 35, 45, 40, 50, 35, 55, 25, 30, 45, 40, 50, 40, 35, 50, 55,
              65, 55, 50, 35, 30, 50, 60, 39)

Datos <- data.frame(Grupo, Ansiedad)
head(Datos)

length(Grupo)

foto <- c(30, 35, 45, 40, 50, 35, 55, 25, 30, 45, 40, 50)
araña <- c(40, 35, 50, 55, 65, 55, 50, 35, 30, 50, 60, 39)

mean(foto)
mean(araña)

boxplot(Datos$Ansiedad ~ Datos$Grupo)

shapiro.test(Datos$Ansiedad)

var(araña); var(foto)

var.test(araña,foto)

t.test(araña,foto, var.equal = T)

#H0 : "No existen diferencias significativas entre el valor medio
#      de ansiedad del grupo fotografía comparado con el grupo que sostuvo
#      una tarántula real"

# Ejercicio 2 -------------------------------------------------------------


control <- c(130, 120, 61, 111, 93, 56, 85, 128, 73, 56,65, 71, 109, 122, 85)
cont <- c(44, 62, 77, 58, 88, 61, 42, 57, 70, 38, 66,82, 81, 54, 81)

boxplot(control, cont)

help("t.test")
#conf.level = 0.99

t.test(control, cont, var.equal = F, conf.level = 0.99)
t.test(control, cont, var.equal = F)



# Ejercicio 3 -------------------------------------------------------------

suelo <- 1:10
tiempo1 <- c(1.59,1.39,1.64,1.17,1.27,1.58,1.64,1.53,1.21,1.48)
tiempo2 <- c(1.21,0.92,1.31,1.52,1.62,0.91,1.23,1.21,1.58,1.18)
diferencia <- c(0.38,0.47,0.33,-0.35,-0.35,0.67,0.41,0.32,-0.37,0.30)

CDC <- data.frame(suelo,tiempo1,tiempo2,diferencia)

CDC

boxplot(CDC$tiempo1, CDC$tiempo2)

shapiro.test(CDC$tiempo1)

var(CDC$tiempo1); var(CDC$tiempo2)
var.test(CDC$tiempo1, CDC$tiempo2)

t.test(CDC$tiempo1, CDC$tiempo2, paired = T, var.equal = T)
