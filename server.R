library(shiny)

windchill <- function(temp_F,v_mph) {
  35.74 + 0.6215*temp_F - 35.75*(v_mph)^0.16 + 0.4275*temp_F*(v_mph)^0.16
}

shinyServer(
  function(input,output) {
    output$temp <- renderPrint({input$temp})
    output$wind <- renderPrint({input$wind})
    output$chill<- renderPrint({windchill(input$temp,input$wind)})
  }
)