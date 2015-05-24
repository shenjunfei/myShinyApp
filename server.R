library(shiny)

zodiac <- c("Rat", "Ox", "Tiger", "Rabbit", "Dragon", "Snake",
               "Horse", "Goat", "Monkey", "Rooster", "Dog", "Pig")
animal <- function(year) zodiac[(year - 1900) %% 12 + 1]

shinyServer(
    function(input, output){
        output$inputYear <- renderPrint({input$year})
        output$animal <- renderPrint({animal(input$year)})
    }
    )