# Laboratorio semana 4 
# Resumir datos gráficamente 
#Melvin Isac De La Rosa Estrada
#Matrícula: 1634380


# Importar datos csv ------------------------------------------------------

esp.url <- paste0("https://raw.githubusercontent.com/mgtagle/",
                  "PrincipiosEstadistica2021/main/cuadro1.csv")
inventario <- read.csv(esp.url)
inventario

str(inventario)
dim(inventario)
head(inventario)
tail(inventario)
names(inventario)
colnames(inventario)
summary(inventario)

summary(inventario[,3:5])

is.factor(inventario$Posicion)

inventario$Posicion <- factor(inventario$Posicion)
is.factor(inventario$Posicion)


# Tablas de frecuencia ----------------------------------------------------

freq_position <- table(inventario$Posicion)
freq_position

#frecuencias relativas 

prop_position <- freq_position / sum(freq_position)
prop_position

# si se desea expresar las proporciones como porcentajes 

perc_position = 100*prop_position
perc_position

# gráficas barplot y pie  -------------------------------------------------

barplot(freq_position, las = 1, border = NA, cex.names = 0.7)
#cex.names = 0.7: reduce los tamaños de las etiquetas de categoria
#para que todas quepan en el gráfico 



#gráfico circular o pie 

pie(freq_position, col = topo.colors(4))
pie(freq_position,col = topo.colors(4),
    labels = paste0(levels(inventario$Posicion), round(perc_position, 2),"%"))


# autoestudio  ------------------------------------------------------------

freq_positione <- table(inventario$Especie)
freq_positione


barplot(freq_positione, las = 1, border = NA, cex.names = 0.7)

pie(freq_positione, col=topo.colors(3))


# histogramas -------------------------------------------------------------

hist(inventario$Diametros, las = 1, col ='#ffe0b3')
                    
diam.hist <- hist(inventario$Diametros, las = 1, col = '#ffe0b3')

diam.hist

diam.hist$breaks

h1 <- hist(inventario$Diametros, xaxt = "n",
           breaks = c(6,8,10,12,14,16,18,20,22,24),
           col = "#0066ff", xlab = "Diámetros (cm)",
           ylab = "Frecuencias",
           main = "",
           las = 1,
           ylim = c(0,14))
axis(1, h1$mids)


# autoestudio  ------------------------------------------------------------

hist(inventario$Altura, las =1, col = "#ffcc00")

altura.hist <- hist(inventario$Altura, las = 1, col = "#ffcc00")
altura.hist
altura.hist$breaks

h2 <- hist(inventario$Altura, xaxt = "n",
           breaks = c(8,10,12,14,16,18,20,22),
           col = "#b38f00", xlab = "Altura (m)",
           ylab = "Frecuencias",
           main = "",
           las = 1,
           ylim = c(0,14))
axis(1,h2$mids)
