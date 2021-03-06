#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)
library(shinydashboard)
git_list <- c("Github", "Travis CI", "Bit Bucket", "Gitlab", "AppVeyor")
# Define UI for application that draws a histogram
ui <-  dashboardPage(
  dashboardHeader(title = "Rstats net Health",
                  
              dropdownMenu(type = "messages",
                               messageItem(
                                 from = "Git Version Control",
                                 message = "[Github Status]: We have a temporary issues with webhooks.",
                                 time = "13:50",
                                 icon = icon("exclamation-triangle")
                                 
                               ),
                               messageItem(
                                 from = "Git Version Update",
                                 message = "[Github Status]: Everything is operating normally.",
                                 time = "15:30",
                                 icon = icon("check")
                               
                               ),
                               messageItem(
                                 from = "Support",
                                 message = "The new server is ready"
                               )
                               )),
  
  dashboardSidebar(   
    checkboxGroupInput("git-control","Git Version Control:",git_list)
  
  ),
  dashboardBody()
  
)
# Define server logic required to draw a histogram
server <- function(input, output){
 
  
}

# Run the application 
shinyApp(ui = ui, server = server)

