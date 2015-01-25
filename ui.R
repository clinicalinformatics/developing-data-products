library(shiny)
shinyUI(pageWithSidebar(
  headerPanel("Wind chill index calculator"),
  sidebarPanel(
    h3('Parameters:'),
    numericInput('temp','Temperature (deg F):', 20),
    numericInput('wind','Wind (mph):',5)
  ),
  mainPanel(
    h3('Wind chill'),
    p('For a temperature of '),
    verbatimTextOutput('temp'),
    p('degrees Fahrenheit and wind of '),
    verbatimTextOutput('wind'),
    p('mph, the calculated wind chill is'),
    verbatimTextOutput('chill'),
    p('degrees Fahrenheit.')
  )
))