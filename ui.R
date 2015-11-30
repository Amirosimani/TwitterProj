# Define UI for dataset viewer application
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Twitter Search"),
  
  # Sidebar with controls to provide a caption, select a dataset,
  # and specify the number of observations to view. Note that
  # changes made to the caption in the textInput control are
  # updated in the output area immediately as you type
  sidebarLayout(
    sidebarPanel(
      textInput("caption", "Look up a #:", "#COP21"),
      
      numericInput("obs", "Number of observations to view:", 10)
    ),
    
    
    # Show the caption, a summary of the dataset and an HTML 
    # table with the requested number of observations
    mainPanel(
      h3(textOutput("caption", container = span)),
      
      verbatimTextOutput("summary"), 
      
      fluidRow(
        dataTableOutput(outputId="table")
    )
  )
)
)
)