library(shiny)
source('global.R')

shinyServer(function(input, output) {

    choiceValues <- reactive({
        m <- m.fw
        if (input$data == 'All'){
            m <- m.fw
        }else if (input$data %in% colnames(m)){
            m[,colnames(m) == input$data] <- m.fw[,colnames(m.fw) == input$data]
        }else{
            m[rownames(m) == input$data,] <- m.fw[rownames(m.fw) == input$data,]
        }
        list(m)
    })
                                        #
    mainPlot <- renderPlot({
        ## wine.col <- c('lightyellow','yellow','gold','lightblue','pink','red','darkred','black')
        ## food.col <- c('green','orange','tan','brown','white','blue','darkblue','white','red','brown','grey')

        ## plotweb(choiceValues$m,method='cca',col.low=wine.col,bor.col.low=wine.col,col.interaction='lightgrey',bor.col.interaction='lightgrey',col.high=food.col,bor.col.high=food.col)
        plot(choiceValues()$m)
    })

})
