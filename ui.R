shinyUI(
  pageWithSidebar(
    headerPanel("Volume of Cuboid Calculator"),
    sidebarPanel(
      numericInput('width', 'length of the base of the cuboid in cm', 90, min = 50, max = 200, step = 5),
      #submitButton('Submit'),
      sliderInput('height', 'height of the cuboid in cm', 90, min = 50, max = 200, step = 5)
    ),
    mainPanel(
      tabsetPanel(
        tabPanel('Output',
                 p(h3('Results of Calculation'),
                   h4('The Area of the base of the cuboid in sqcm is'),
                   verbatimTextOutput("inputValue"),
                   h4('Which resulted in a calculation of the volume in cubic cm of '),
                   textOutput("prediction")
                 )
        ),
        tabPanel('Documentation',
                 p(h4("Area of Cuboid Calculator:")),
                 br(),
                 helpText("This application calculates the area of a cuboid given the base width and its height.
                          The base of the cuboid is a square whose length is given as numeric input. The height of the cuboid is
                          adjusted with the use of the slider.")
            
        )
      )
      
    )
  )
)