library(shiny)
data(mtcars)
calcModel <- function (cylno){
  lm(mpg~am,data=mtcars[mtcars$cyl==cylno,])
}


shinyServer(
  function(input,output){
    x <- reactive({input$idCyl})
    output$idCyl <- renderPrint({x()})
    output$idModel <- renderPrint({calcModel(input$idCyl)})
    output$idPlot <- renderPlot({
      data<-mtcars[mtcars$cyl==input$idCyl,]
      plot.new()
      plot(as.factor(data$am),data$mpg)
    })
  }
)