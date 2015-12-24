Star Wars Character
========================================================
author: erikaananda
date: Thu Dec 24 11:22:37 2015



The Power of the Force
========================================================

<p>
![alt text](https://upload.wikimedia.org/wikipedia/commons/thumb/6/6c/Star_Wars_Logo.svg/2000px-Star_Wars_Logo.svg.png)
<p>


The Story
========================================================

A LONG TIME AGO

IN A GALAXY FAR, FAR AWAY

LIVED YOUR CHARACTER...


Who are you?
========================================================


We use your personal information to set the seed, and allow The Force to choose your Character


```r
SWC <- c("Leia", "Han", "Luke", 
         "Yoda", "Rey", "Fin", 
         "Poe", "Obi Wan Kenobi", 
         "Chewbacca", "Kylo Ren")
```

The Force finds your Character
========================================================


We use your personal information to set the seed, and allow The Force to choose your Character


```r
shinyServer(
  function(input, output){
      output$text1 <- renderText({
        if(input$goButton > 0){
        #isolate holds off on action until the button is pressed
        isolate({
          set.seed(nchar(input$text1) * input$id1 * as.numeric(input$id2))
          # "runif" aka "The Force"
          paste(SWC[runif(1, min=1, max=10)])
        })
        }
      })
  }
)
```


Learn More about Your Character
========================================================

For more information, head to imdb.com
