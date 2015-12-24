#ui.R

library(shiny)
shinyUI(pageWithSidebar(
  headerPanel ("Who is your Star Wars character?"),
  sidebarPanel(
    textInput(inputId = 'text1', label='What is your first name? ', ""),
    numericInput('id1','Pick a number from 1 - 10: ', 5, min=1, max=10, step=1), 
    radioButtons('id2', 'Pick a color: ',
                       c("blue" = "1",
                         "red" = "2",
                         "yellow" = "3",
                         "purple" = "4",
                         "orange" = "5",
                         "green" = "6"
                         )
                       , selected = "1"),
    actionButton("goButton", "Go!")
  ),
  mainPanel(
    h1('Your Star Wars character is: '),  
    textOutput('text1')
  )
))
