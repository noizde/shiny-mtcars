library(shiny)

shinyServer(function(input, output) {
  
  selectedData <- reactive({
    mtcars[, c(input$xvar, input$yvar)]
  });
  
  cor_val <- reactive({
    paste("Correlation between selected variables: ", cor(mtcars[,input$xvar], mtcars[,input$yvar]))
  });
  
  output$cor_plot <- renderPlot({
    par(mar = c(0, 0, 0, 0))
    plot(selectedData(),
         pch = 16)
  });
  
  output$cor_text <- cor_val;
  
})