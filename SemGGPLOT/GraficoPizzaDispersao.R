#Grafico de Pizza
library(MASS)
pie(table(Cars93$Type))

#Grafico de Dispersão

library(datasets)
plot(airquality$Wind,
     airquality$Temp,
    pch=16,
    xlab = "Wind Velocity (MPH)",
    ylab = "Temperature (Fahrenheit)",
    main = "Temperature vs Wind Velocity")


# Se Temp depender de Wind

plot(airquality$Temp ~ airquality$Wind,
     pch = 16,
     xlab = "Wind Velocity (MPH)",
     ylab = "Temperature (Fahrenheit)",
     main = "Temperature vs Wind Velocity")


# Dispersão de Matriz.

Ozone.Temp.Wind <- subset(airquality,
                          select = c(Ozone, Temp, Wind))
head(Ozone.Temp.Wind)

pairs(Ozone.Temp.Wind)
