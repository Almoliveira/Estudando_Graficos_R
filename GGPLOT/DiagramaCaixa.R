library(datasets)
library(ggplot2)

ggplot(airquality, aes(x=as.factor(Month), y = Temp)) +
  geom_boxplot() +
  geom_point() +
  labs(y = "Temperature", x="Month") +
  scale_x_discrete(labels = c("May","June", "July", "August" , "September"))