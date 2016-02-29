library(shiny)
library(MASS)
library(ggplot2)
library(RColorBrewer)

# Define the overall UI
shinyUI(
        # Use a fluid Bootstrap layout
        fluidPage(
                # Give the page a title
                titlePanel("Painting aesthetic:"),
                # Generate a row with a sidebar
                sidebarLayout(
                        # Define the sidebar with one input
                        sidebarPanel(
                                h4('In 1708 Roger de Piles, a painter and art critic, analysed fifty-six major painters of his own time.
                                  To each painter in the list he gave marks from 0 to 18 for composition, drawing, color and expression.
                                  This gave an overview of aesthetic appreciation hinging on the balance between colour and design.
                                  Choose an aesthetic from the drop down menu below to reveal the top painters, there schools and score.'),
                                h4(""),
                                selectInput("aesthetic", "Aesthetic:",
                                            list("Total of all aesthetics" = "Total",
                                                 "Composition" = "Composition",
                                                 "Drawing" = "Drawing",
                                                 "Colour" = "Colour",
                                                 "Expression" = "Expression")),
                                hr(),
                                sliderInput("number.painters",
                                            "Number of painters:",
                                            min = 5,
                                            max = 50,
                                            value = 10),
                                helpText("Data from de Piles (1708)")
                        ),
                        # Create a spot for the barplot
                        mainPanel(
                                plotOutput("paintPlot")
                        )
                )
        )
)