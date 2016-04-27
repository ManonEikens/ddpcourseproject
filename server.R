library(shiny)

calories <- function(gender,age,height,weight) {
      if (gender == "male") {
            10*as.numeric(weight) + 6.25*as.numeric(height) - 5*as.numeric(age) + 5
      }
      else {
            10*as.numeric(weight) + 6.25*as.numeric(height) - 5*as.numeric(age) - 161
      }
}

shinyServer(
      function(input, output) {
            output$select <- renderText({input$select})
            output$text1 <- renderText({input$text1})
            output$text2 <- renderText({input$text2})
            output$text3 <- renderText({input$text3})
            output$optimalcal <- renderText({calories(input$select,input$text1,input$text2,input$text3)})
            }
)
      

