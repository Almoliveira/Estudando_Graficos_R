library(MASS)
head(Cars93[1:3])

table(Cars93$Type)

barplot(table(Cars93$Type))

#ylim -> Aumente o limite do Eixo Y

#XLab e YLab, Labels para o grafico respectivamente

#axis.lty define o Eixo

#space Define o espaçamento


barplot(table(Cars93$Type),
        ylim=c(0,25),
        xlab = "Type",
        ylab = "Frequency",
        axis.lty = "solid",
        space = .5)