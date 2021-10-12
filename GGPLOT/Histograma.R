library(ggplot2)

ggplot(airquality, aes(x=Temp)) + 
  geom_histogram(binwidth =  5, color = "black", fill = "grey80") +
  theme_bw() +
  labs(x = "Temperature (Fahrenheit)", y="Frequency", title =
         "Temperatures in the airquality Data Frame")

