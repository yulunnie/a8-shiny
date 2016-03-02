## load the packages
library(shiny)
library(plotly)

## import the iris dateset
data("iris")

## address the r script of the function
source('functions.r')

## take input from UI.r and add the respective map
shinyServer(function(input, output) {
  output$value <- renderPlotly({
    plotmap(iris, input$leng, input$wid, input$dots)
  })
})