library(ggplot2)
library(MASS)

ggplot(Cars93, aes(x=Type)) +
  geom_bar() +
  labs(y="Frequency", title="Car Type and Frequency in Car93")

# Barras Agrupadas

Type.Origin <- subset (Cars93, select=c("Type","Origin"))
head(Type.Origin)

ggplot(Type.Origin, aes(x = Type, fill = Origin)) +
  geom_bar(position="dodge", color="black") +
  scale_fill_grey(start=0, end=1)

# Versão ggplot para Dataset de Female

females.df <- data.frame(females)
females.df

ggplot(females.df, aes(x=Hair, y = Freq, fill=Eye)) +
  geom_bar(position="dodge",color="black", stat="identity") +
  scale_fill_grey(start=0,end=1)

