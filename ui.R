
library(shiny)

shinyUI(fluidPage(
      titlePanel("Calculate your optimal daily calorie intake"),
      sidebarPanel(
            selectInput("select", label = "Gender", 
            choices = list("male" = "male", "female" = "female")),
            textInput(inputId="text1", label = "Age (years)"),
            textInput(inputId="text2", label = "Height (cm)"),
            textInput(inputId="text3", label = "Weight (kg)"),
            submitButton("Submit")
  ),
  mainPanel(
      br(),
      p('With this application you can calculate your optimal daily calorie intake.'),
      p('To do so, you fill in your gender, age, height and weight and click on the submit-button.'),
      br(),
      p('Your gender:'),
      textOutput('select'),
      br(),
      p('Your age:'),
      textOutput('text1'),
      br(),
      p('Your height:'),
      textOutput('text2'),
      br(),
      p('Your weight:'),
      textOutput('text3'),
      br(),
      h3(p('Your optimal daily calorie intake:')),
      h4(textOutput('optimalcal')),
      br(),
      br(),
      br(),
      br(),
      p('This app was created by M. Eikens'),
      p('version 1.1 2016-04-27')
  )
))      
     

