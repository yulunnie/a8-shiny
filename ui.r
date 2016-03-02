## load packages
library(shiny)
library(plotly)

## create a ueser interface
shinyUI(fluidPage(
  titlePanel('Different Flower Sepal and Petal'),
  
  sidebarLayout(
    
    ## make 3 widgets in the sidebar
    sidebarPanel(
      
      ## make a select buttonwith the choice of 2 parts of length
      radioButtons("leng",
                   label = h3("Length part"), 
                   choices = list("Sepal length" = 'Sepal.Length', "Petal Length" = 'Petal.Length'),
                   selected = 'Sepal.Length'),
      
      ## make a select buttonwith the choice of 2 parts of width
      radioButtons("wid",
                   label = h3("Width part"),
                   choices = list("Petal Width" = 'Petal.Width', "Sepal Width" = 'Sepal.Width'),
                   selected = 'Sepal.Width'),
      
      ## make a select box with the choice of display as dots or lines
      selectInput("dots", label = h3("Lines or Dots?"), 
                  choices = list("Dots" = 'markers', "Lines" = 'marker'), 
                  selected = 'markers')
      
    ),
    
    ## create the graph in the main panel
    mainPanel(
      plotlyOutput('value')
    )
  )
))