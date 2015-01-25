library(shiny)
TypePlan<-function(VideoCall,TCP){
        perVideoCall=(VideoCall/(VideoCall + TCP))*100
        perTCP=(TCP/(VideoCall + TCP))*100
        if(perVideoCall>perTCP){print ("Buy High Speed Data Plan")}
        else {print("Buy Large Data amt plan")}
}
shinyServer(
        function(input, output){
                output$oVideoCall<-renderPrint({input$VideoCall})
                output$oTCP<-renderPrint({input$TCP})
                
                output$prediction<- renderPrint({TypePlan(input$VideoCall,input$TCP)})
        }
)