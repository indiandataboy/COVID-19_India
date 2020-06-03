#
# This is the server logic of a Shiny web application. You can run the
# application by clicking 'Run App' above.

library(shiny)
library(googleVis)

shinyServer(function(input, output) {

    output$state_plot <- renderGvis({

    state <- input$state
    state_data <- subset(state_data, State == state)
    gvisMotionChart(state_data, idvar = "State", timevar = "Date",
                    options=list(width=600, height=400))
    })

})
