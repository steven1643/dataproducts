library(shiny)
library(MASS)
library(ggplot2)
library(RColorBrewer)

painters2 <- painters
painters2$Total <- rowSums(painters2[, 1:4])
painters2$Name <- rownames(painters2)

levels(painters2$School)[match("A",levels(painters2$School))] <- "Renaissance"
levels(painters2$School)[match("B",levels(painters2$School))] <- "Mannerist"
levels(painters2$School)[match("C",levels(painters2$School))] <- "Seicento"
levels(painters2$School)[match("D",levels(painters2$School))] <- "Venetian"
levels(painters2$School)[match("E",levels(painters2$School))] <- "Lombard"
levels(painters2$School)[match("F",levels(painters2$School))] <- "16th Century"
levels(painters2$School)[match("G",levels(painters2$School))] <- "17th Century"
levels(painters2$School)[match("H",levels(painters2$School))] <- "French"

Composition <- painters2[order(painters2$Composition, decreasing=TRUE), ]
Drawing <- painters2[order(painters2$Drawing, decreasing=TRUE), ]
Colour <- painters2[order(painters2$Colour, decreasing=TRUE), ]
Expression <- painters2[order(painters2$Expression, decreasing=TRUE), ]
Total <- painters2[order(painters2$Total, decreasing=TRUE), ]