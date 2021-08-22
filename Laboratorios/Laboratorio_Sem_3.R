#Laboratorio semana 3
# Melvin Isac De La Rosa Estrada
# matrícula 1634380


# Importar datos a R ------------------------------------------------------

# parte 1: importar datos 

trees <- read.csv("Laboratorios/DBH_1.csv", header = TRUE)
head(trees)

dbh <- c(16.5, 25.3, 22.1, 17.2, 14.1, 8.1, 34.3, 5.4, 5.7, 11.2, 24.1, 14.5, 7.7,
         15.6, 15.9, 10, 17.5, 20.5, 7.8, 27.3, 9.7, 6.5, 23.4, 8.2, 28.5, 10.4, 11.5,
         14.3, 17.2, 16.8)

# Acceder datos de internet

#prof_url <- "http://www.profepa.gob.mx/innovaportal/file/7635/1/accionesInspeccionfoanp.csv."
#profepa <- read.csv(prof_url)

prof_url2 <- paste0("http://www.profepa.gob.mx/innovaportal/","file/7635/1/accionesInspeccionfoanp.csv")
profepa2 <- read.csv(prof_url2)
head(profepa2)

# datos de URL seguras

library(repmis)
conjunto <- source_data("https://www.dropbox.com/s/hmsf07bbayxv6m3/cuadro1.csv?dl=1")
head(conjunto)

library(readr)
file <- paste0("https://raw.githubusercontent.com/mgtagle/","202_Analisis_Estadistico_2020/master/cuadro1.csv")
# hay un detalle con la paqueteria de readr, al parecer funciona diferente con esta versión de R
inventario <- read_csv(file)

head(inventario)


# Operaciones con la base de datos ----------------------------------------

mean(trees$dbh)
sd(trees$dbh)

# slección mediante restricciones 

sum(trees$dbh < 10)

which(trees$dbh < 10)

trees.13 <- trees[!(trees$parcela=="2"),]
trees.13

#selección de submuestra

trees.1 <- subset(trees, dbh <= 10)
head(trees.1)

mean(trees.1$dbh)

setwd("C:/Estadistica_MCF_202/MCF_202_Agosto_2021")

# Representación gráfica  -------------------------------------------------

mamiferos <- read.csv("https://www.openintro.org/data/csv/mammals.csv")

hist(mamiferos$total_sleep, xlim = c(0,20), ylim = c(0,14), main = "Total de horas sueño de las 39 especies",
     xlab = "Horas sueño", ylab = "Frecuencia", las = 1, col = "#99ff66")

# barplot

data("chickwts")
head(chickwts[c(1:2,42:43, 62:64),])

feeds <- table(chickwts$feed)
feeds

barplot(feeds)

#para ordenar de forma decreciente 

barplot(feeds[order(feeds, decreasing = TRUE)], main = "Frecuencia por tipo de alimentación",
        xlab = "Número de pollos", las = 1, horiz = 1, col = "#99ff66")

