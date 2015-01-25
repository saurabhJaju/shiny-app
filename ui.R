library(shiny)
shinyUI(pageWithSidebar(
        headerPanel("Enter Your Data Usage in MB(mega bytes)"),
        sidebarPanel(
                numericInput("VideoCall",'Skype/Hangout',0,min=0,max=5120),
                ##
                numericInput("TCP",'Surfing',1,min=0,max=3072),
                
                submitButton('Submit')
                ),
        mainPanel(
                h3('Result of prediction'),
                h4('You entered'),
                verbatimTextOutput("oVideoCall"),
                h4('You entered'),
                verbatimTextOutput("oTCP"),
                h4('Which resulted in prediction of'),
                verbatimTextOutput("prediction")
                )
        )
)

##checkboxGroupInput("id2","Checkbox",
##c("Value 1" = "1",
  ##"Value 2" = "2",
  ##"Value 3" = "3")),