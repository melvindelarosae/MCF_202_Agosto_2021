#Tarea 1
#Melvin Isac De La Rosa Estrada
#Número de matrícula 1634380


# problema 1 --------------------------------------------------------------

pinus <- 3140
mezquite <- 1453
encinos <- 450
teka <- 1200
juniperos <- 720

superficie <- c(pinus,mezquite,encinos,teka,juniperos)

barplot(superficie)
sort(superficie)
Superficie <- sort(superficie)

barplot(Superficie)

mean(superficie)

# problema 2 --------------------------------------------------------------

germinación <- c(4,1,6,2,4,2,4,2,4,6,3,5,3,2,5,4,0,5,4,2,4,5,3,5,3,5,4,3,6,2)
mean(germinación)
help(sd)
sd(germinación)


# problema 3 --------------------------------------------------------------

altura <- c(38,14,44,11,9,21,39,28,41,4,35,24,36,12,20,31,24,25,10,21,11,36,37,20,26)
mean(altura)
sd(altura)
