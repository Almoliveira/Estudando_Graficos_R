library(datasets)
females <- HairEyeColor[,,2]
females

color.names <- c("black", "grey40", "grey80", "white")

t(females)

barplot(t(females),
        beside=T,
        ylim=c(0,70),
        xlab="Hair Color",
        ylab="Frequency of Eye Color",
        col = color.names,
        axis.lty = "solid")

legend("top",
       rownames(t(females)),
       cex = 0.8,
       fill=color.names,
       title="Eye Color")

