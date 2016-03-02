## seperate the function from server so it is easy to change and update

## take the dataset, the select length, the select width and the choice
## of dots or line as parameter. Return the graph
plotmap <- function(dataset, length, width, dots) {
  plot_ly(data = dataset,
          x = eval(parse(text = length)),
          y = eval(parse(text = width)),
          mode = dots,
          color = Species) %>%
  return()
}