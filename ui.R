library(shiny)


shinyUI(pageWithSidebar(
  headerPanel("Assigment - MTCars mpg~cylinders"),
  sidebarPanel(
    h3('Help'),
    p('This application builds linear regression models, calculates the correlation of mpg~"transmission mode.'),
    p('This application has one parameter, you can set the number of cylinders. This parameter has to be one these values = 4,6,8'),
    p('A boxplot also calculated to visalise the the differences in the transmission modes.'),
    h3('Model parameters'),
    numericInput('idCyl','Number of cylinders',4,min=4,max=8,step=2),
    submitButton('Calculate')
  ),
  mainPanel(
    h3('Model panel'),
    h4('Your selection'),
    verbatimTextOutput("idCyl"),
    h4('Model'),
    verbatimTextOutput("idModel"),
    plotOutput('idPlot')
  )
))