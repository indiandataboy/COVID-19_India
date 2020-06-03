
library(shiny)

shinyUI(navbarPage("COVID-19 IN INDIAN STATES",
                   tabPanel("Gvis Motion Chart",
    sidebarLayout(
        sidebarPanel(
            radioButtons("state", label = "Select State", choices = unique(state_data$State), selected = "Tamil Nadu")
        ),

      
        mainPanel(
            htmlOutput("state_plot")
        )
    )
),
tabPanel(p(icon("info"), "About"),
         mainPanel(
           includeMarkdown("Documentation.Rmd"))
         
)
)
)

