library(shiny)

shinyUI(pageWithSidebar(
  headerPanel('Motor Trend Car Road Tests'),
  sidebarPanel(
    selectInput('xvar', 'X Variable', names(mtcars)),
    selectInput('yvar', 'Y Variable', names(mtcars),
                selected=names(mtcars)[[2]])
  ),
  mainPanel(
    plotOutput('cor_plot'),
    textOutput('cor_text')
  )
))