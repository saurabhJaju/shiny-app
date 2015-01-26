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
                h4('Description'),
                p("In the app a function calculates the percentage of data used for skype or surfing(input by the user). And a prediction is made as to what kind of data plan the user should buy the next time."),
                p("i.e if the user consumes more data by using skype he should buy a data(internet) plan which has less jitter.(i.e a high speed plan) and if the user consumes more data by surfing than skype then he/she must by high total data plan. So the app basically recomends what kind of internet plan the user must buy based on his data usage pattern")
                )
        )
)

