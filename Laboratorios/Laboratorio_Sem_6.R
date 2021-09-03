#Laboratorio 6 Variables y datos en R
#Melvin Isac De La Rosa Estrada
#matrícula: 1634380



# bases de los vectores ---------------------------------------------------

#variables cuantitativas 
wins = c(52,51,47,47,42)
losses = c(20,21,25,25,30)

win_loss_perc = wins / (wins + losses)
win_loss_perc

#variables cualitativas 

teams = c("UtJ", "PhS", "DnN", "LAC", "DlM")


# manipulación de vectores subconjuntos -----------------------------------

# el primer elemento de la variable wins
wins[1]
#el tercer elemento de la variable losses 
losses[3]
#último nombre en la variable teams 
teams[5]

#length da el numero de valores 
length(teams)
teams[length(teams)]
sort(wins, decreasing = TRUE)
rev(wins)



# subjuntos con índices lógicos  ------------------------------------------

# victorias de Utah Jazz
wins[teams == "UtJ"]

#equipos con victorias >40
teams[wins >40]

#nombre de los equipos con derrotas entre 10 y 29
teams[losses >=10 & losses <= 29]


# Factores y variables cualitativas ---------------------------------------

#vector numérico

num_vector <- c(1,2,3,1,2,3,2)

#crear un vector a partir de num_vector
first_factor <- factor(num_vector)
first_factor

#puede tomar el vector teams y convertirlo como factor

teams = factor(teams)
teams


# secuencias --------------------------------------------------------------

#operador dos puntos
1:5
1:10
-3:7
10:1

#funcion secuencia 
seq(from = 1, to = 10)
seq(from = 1, to = 10, by = 1)
seq(from = 1, to = 10, by = 2)
seq(from = -5, to = 5, by = 1)


# vectores repetidos  -----------------------------------------------------

#repetir 1 cinco veces 
rep(1, times = 5)
#repetir 1 y 2 tres veces 
rep(c(1,2), times =3)

rep(c(1,2), each = 2)

rep(c(1,2), length.out = 5)

#some complex examples 
rep(c(3,2,1), times = 3, each =2)



# de vectores a escritura tabular (data frame) ----------------------------

data = data.frame(Teams = teams,
                  Wins = wins,
                  Losses = losses,
                  Wlperc = win_loss_perc)
data

data$Teams

data$Wins[1]
data$Wins[5]

# victorias del equipo Utah 
data$Wins[data$Teams == "UtJ"]

# equipos con victorias >40
data$Teams[data$Wins > 40]

# nombre de los equipos con derrotas entre 10 y 29
data$Teams[data$Losses >=10 & data$Losses <=29]


# autoestudio -------------------------------------------------------------

teams = c("UtJ","PhS","DN","LAC","DM","PTB","LAL",
          "MG","GSW","SAS","NOP","SK","MT","OCT","HT")
W = c(52,51,47,47,42,42,42,38,39,33,31,31,23,22,17)
L = c(20,21,25,25,30,30,30,34,33,39,41,41,49,50,55)
W.L.perc = c(0.722,0.708,0.653,0.653,0.583,0.583,0.583,0.528,0.542,
             0.458,0.431,0.431,0.319,0.306,0.236)
GB = c(0,1.0,5.0,5.0,10.0,10.0,10.0,14.0,13.0,19.0,21.0,21.0,29.0,30.0,35.0)
PS.G = c(116.4,115.3,115.1,114.0,112.4,116.1,109.5,113.3,113.7,111.1,114.6,
         113.7,112.1,105.0,108.8)
PA.G = c(107.2,109.5,110.1,107.8,110.2,114.3,106.8,112.3,112.7,
         112.8,114.9,117.4,117.7,115.6,116.7)
SRS = c(8.97,5.67,4.82,6.02,2.26,1.81,2.77,1.07,1.10,-1.58,-0.20,-3.45,
        -5.25,-10.13,-7.50)

GB = W[1] - W

posiciones <- data.frame(Teams = teams,
                         Wins = W,
                         Losses = L,
                         WLperc = W.L.perc,
                         GamesBehind = GB,
                         PointsScored = PS.G,
                         PointsAgainst = PA.G,
                         Rating = SRS)
posiciones

sort(posiciones$PointsScored, decreasing = TRUE)
sort(posiciones$PointsScored)
