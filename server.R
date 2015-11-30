# Define server logic required to summarize and view the selected
# dataset
shinyServer(function(input, output) {
  
  # take the caption and search twitter
  observe({
    searchTerm <- input$caption
    searchResults <- searchTwitter(searchTerm, n = 1000)  
    tweetFrame <- twListToDF(searchResults)
  
    userInfo <- lookupUsers(tweetFrame$screenName)  
    userFrame <- twListToDF(userInfo)
  })

  output$caption <- renderText({
    input$caption
  })
  
  output$table <- renderDataTable({ 
  plotdata <- userFrame
  })
  
})

