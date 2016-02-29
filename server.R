library(shiny)
library(MASS)
library(ggplot2)
library(RColorBrewer)

shinyServer(function(input, output) {

        output$paintPlot <- reactivePlot(function() {
                if (input$aesthetic == "Composition") {
                        p = ggplot(data = Composition[1:input$number.painters, ],
                                        aes(x = reorder(Name, Composition),
                                        y = Composition, fill=School)) +
                                geom_bar(position='dodge', stat='identity') +
                                scale_fill_brewer(palette='Set1') +
                                coord_flip() +
                                xlab('') + ylab('composition score (0-18)')
                }
                else if (input$aesthetic == "Colour") {
                        p = ggplot(data = Colour[1:input$number.painters, ],
                                   aes(x = reorder(Name, Colour),
                                       y = Colour, fill=School)) +
                                geom_bar(position='dodge', stat='identity') +
                                scale_fill_brewer(palette='Set1') +
                                coord_flip() +
                                xlab('') + ylab('colour score (0-18)')
                }
                else if (input$aesthetic == "Drawing") {
                        p = ggplot(data = Drawing[1:input$number.painters, ],
                                   aes(x = reorder(Name, Drawing),
                                       y = Drawing, fill=School)) +
                                geom_bar(position='dodge', stat='identity') +
                                scale_fill_brewer(palette='Set1') +
                                coord_flip() +
                                xlab('') + ylab('drawing score (0-18)')
                }
                else if (input$aesthetic == "Expression") {
                        p = ggplot(data = Expression[1:input$number.painters, ],
                                   aes(x = reorder(Name, Expression),
                                       y = Expression, fill=School)) +
                                geom_bar(position='dodge', stat='identity') +
                                scale_fill_brewer(palette='Set1') +
                                coord_flip() +
                                xlab('') + ylab('expression score (0-18)')
                }
                else {
                       p = ggplot(data = Total[1:input$number.painters, ],
                                        aes(x = reorder(Name, Total),
                                        y = Total, fill=School)) +
                               geom_bar(position='dodge', stat='identity') +
                               scale_fill_brewer(palette='Set1') +
                               coord_flip() +
                               xlab('') + ylab('total score (0-72)')
                }
        print(p)
        })
})