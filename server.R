#server.R
library(shiny)
SWC <- c("Leia", "Han", "Luke", "Yoda", "Rey", "Fin", "Poe", "Obi Wan Kenobi", "Chewbacca", "Kylo Ren")

shinyServer(
  function(input, output){
      output$text1 <- renderText({
        if(input$goButton > 0){
        #isolate holds off on action until the button is pressed
        isolate({
          set.seed(nchar(input$text1) * input$id1 * as.numeric(input$id2))
          paste(SWC[runif(1, min=1, max=10)])
        })
        }
      })
  }
)
