library(datasets)
head(airquality)

hist(airquality$Temp, xlab="Temperature (Deegres Fahrenheit)",
     main ="Temperatures in New York City May 1 - September 30, 1973",
     probability = TRUE)

lines(density(airquality$Temp))