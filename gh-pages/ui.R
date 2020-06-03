#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

shinyUI(fluidPage(

    # Application title
    titlePanel("COVID-19 IN INDIAN STATES"),

    # Sidebar with a radio button input for number of bins
    sidebarLayout(
        sidebarPanel(
            radioButtons("state", label = "Select State", choices = unique(state_data$State), selected = "Tamil Nadu")
        ),

        # Show a plot of the generated distribution
        mainPanel(
            htmlOutput("state_plot")
        )
    )
))
