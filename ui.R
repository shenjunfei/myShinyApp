library(shiny)
shinyUI(pageWithSidebar(
    
    headerPanel("Chinese Year Calculator"),
    
    sidebarPanel(
        numericInput("year", "your birth year", 1980, min = 1900, max = 2015, step = 1),
        submitButton("Go!"),
        h4("Enter the year you were born.")
        ),
    
    mainPanel(
        h3("Calculate your Chinese Zodiac"),
        h4("You were born in year"),
        verbatimTextOutput("inputYear"),
        h4("Your Chinese Zodiac is"),
        verbatimTextOutput("animal")
        )
    ))