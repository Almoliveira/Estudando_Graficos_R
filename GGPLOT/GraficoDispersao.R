library(datasets)
library(ggplot2)
library(tidyr)
library(GGally)

ggplot(airquality, aes(x=Wind, y=Temp)) +
  geom_point()

# Remove todos NA do dataset airquality
aq.no.NA <- drop_na(airquality)

#Calcular o nivel médio de Ozonio
median.Ozone <- median(aq.no.NA$Ozone)

Ozone_Level <- NULL

for(i in l:nrow(aq.no.NA)){
  if (aq.no.NA$Ozone[i] <- median.Ozone) {
    Ozone_Level[i] <- "Low"
  } else {
    Ozone_Level[i] <- "High"
  }
  
}

aq.Ozone.Level <- cbind(aq.no.NA, Ozone_Level)

ggplot(aq.Ozone.Level, aes(x=Wind, y=Temp, color=Ozone_Level)) +
  geom_point (size=3) +
  scale_color_grey(start=0, end=1)

#matriz de dispersão

aq.subset <- subset(aq.no.NA, select = c(Ozone, Wind, Temp, Solar.R))
ggpairs(aq.subset)