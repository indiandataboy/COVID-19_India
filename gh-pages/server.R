#
# This is the server logic of a Shiny web application. You can run the
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)
library(googleVis)
state_data <- read.csv("~/Downloads/StatewiseTestingDetails.csv", header = TRUE, stringsAsFactors = FALSE)
state_data$Date <- as.Date(state_data$Date, format = "%Y-%m-%d")
state_data <- state_data[order(state_data$State, state_data$Date), ]
states <- split(state_data, state_data$State)
# Define server logic required to draw a histogram
shinyServer(function(input, output) {

    output$state_plot <- renderGvis({

    state <- input$state
    state_data <- subset(state_data, State == state)
    print(state)
    gvisMotionChart(state_data, idvar = "State", timevar = "Date",
                    options=list(width=600, height=400, caption = state))
    })

})
