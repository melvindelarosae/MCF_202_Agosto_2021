# Melvin Isac De La Rosa Estrada
# 16/08/2021
# matricula: 1634380
# importar datos a R


# Importar datos CSV ------------------------------------------------------

#funcion para importar datos reed.cvs

diametro <- read.csv("sesiones/DBH_1.csv", header = TRUE)
diametro
head(diametro)
tail(diametro)


# medidas de tendencia central --------------------------------------------

fivenum(diametro$dbh)
median(diametro$dbh)
mean(diametro$dbh)


# medidas de dispersion  --------------------------------------------------


sd(diametro$dbh)
var(diametro$dbh)

#rango
range(diametro$dbh)

#cuantiles 
quantile(diametro$dbh, 0.5)
quantile(diametro$dbh, 0.25)

#coheficiente de variacion 
sd(diametro$dbh)/mean(diametro$dbh) *100


# graficas ----------------------------------------------------------------

#funcion histograma
hist(diametro$dbh, main = "Histograma diámetros BE", ylab = "Frecuencia", xlab = "Diametro",
     col = "blue", ylim = c(0,10), las = 1)

# boxplot

boxplot(diametro$dbh, ylab = "Diámetro (cm)", mein = "Diámetros Experimento 1")

boxplot(diametro$dbh ~ diametro$parcela, xlab = "Parcelas", ylab = "Diámetro (cm)")

stem(diametro$dbh, scale = 2)     

{
  #Función que encuentra la moda de un vector x
  m1 <- sort(table(x),decreasing=T)
  moda <- names(m1[m1==m1[1]])
  moda <- as.numeric(moda)
  return(moda)
}