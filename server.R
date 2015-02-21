library(shiny)

TempConv <- function(celsius) celsius* 9/5 + 32 

shinyServer(
  function(input, output) {
     output$intemp  <- renderPrint({input$celsius})
     output$outtemp  <- renderPrint({TempConv(input$celsius)})
  }
)