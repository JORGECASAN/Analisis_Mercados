library(readr)
dataset <- read_delim("C:/Users/jcasa/OneDrive/Escritorio/2∫ SEMESTRE/An·lisis de datos de Mercados y Tendencias/CASE_STUDY03/RetailerBrand.csv", 
                      ";", escape_double = T, col_names = FALSE, 
                      trim_ws = TRUE)

### Hypermarkets > 2499

Precio18X <- as.vector(dataset[2,]/dataset[1,])
Precio20X <- as.vector(dataset[5,]/dataset[4,])
Precio22X <- as.vector(dataset[8,]/dataset[7,])

### Hypermarkets 400-2499

Precio18X_2 <- as.vector(dataset[11,]/dataset[10,])  
Precio20X_2 <- as.vector(dataset[14,]/dataset[13,])
Precio21X <- as.vector(dataset[17,]/dataset[16,])  
Precio22X_2 <- as.vector(dataset[20,]/dataset[19,])

# Evoluci√≥n de precios

# Hypermarkets > 2499

# Precio 18X
tsp18 <-
  ts(
    data = Precio18X,
    start = c(2010, 3),
    end = c(2013, 1),
    frequency = 12
  )[1, ]
plot(tsp18) + lines(tsp18)

# Precio 20X
tsp20 <-
  ts(
    data = Precio20X,
    start = c(2010, 3),
    end = c(2013, 1),
    frequency = 12
  )[1, ]
plot(tsp20) + lines(tsp20)

# Precio 22X
tsp22 <-
  ts(
    data = Precio22X,
    start = c(2010, 3),
    end = c(2013, 1),
    frequency = 12
  )[1, ]
plot(tsp22) + lines(tsp22)

# Hypermarkets 400 - 2499

# Precio 18X
tsp18_2 <-
  ts(
    data = Precio18X_2,
    start = c(2010, 3),
    end = c(2013, 1),
    frequency = 12
  )[1, ]
plot(tsp18_2) + lines(tsp18_2)
tsp18_2
# Precio 20X
tsp20_2 <-
  ts(
    data = Precio20X_2,
    start = c(2010, 3),
    end = c(2013, 1),
    frequency = 12
  )[1, ]
plot(tsp20_2) + lines(tsp20_2)
# Precio 21X
tsp21 <-
  ts(
    data = Precio21X,
    start = c(2010, 3),
    end = c(2013, 1),
    frequency = 12
  )[1, ]

plot(tsp21) + lines(tsp21)
# Precio 22X
tsp22_2 <-
  ts(
    data = Precio22X_2,
    start = c(2010, 3),
    end = c(2013, 1),
    frequency = 12
  )[1, ]
plot(tsp22_2) + lines(tsp22_2)

# Gr√°fico de Evoluci√≥n de precios para Hypermarkets > 2499
plot(tsp18,ylim = c(14.5,22),xlim=c(1,35), xlab='Tiempo', ylab= 'Precio unitario',main = 'Gr·fico Hipermercados')+
lines(tsp18,col=6)+lines(tsp20,col=2)+lines(tsp22,col=4)+
  legend("bottomright",col=c("blue","pink","red"),legend =c("22X","18X","20X"), lwd=3, bty = "n")



# Gr√°fico de Evoluci√≥n de precios para Hypermarkets < 2499
plot(tsp18_2,ylim = c(14,24),xlim=c(0,35), xlab = 'Tiempo', ylab = 'Precio Unitario', main = 'Gr·fico Supermercados')+
lines(tsp18_2,col=6,type = 'b')+lines(tsp20_2,col=2)+lines(tsp21,col=5)+lines(tsp22_2,col=4)+
  legend("bottomright",col=c("blue","pink","red", 'lightblue'),legend =c("22X","18X","20X", '21X'), lwd=3, bty = "n")






























