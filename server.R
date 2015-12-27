shinyServer(
  function(input, output) {
    output$inputValue <- renderPrint({input$width * input$width})
    x <- reactive({as.numeric(input$width) * as.numeric(input$width)* as.numeric(input$height)})
    output$prediction <- renderPrint({x()})
  }
)