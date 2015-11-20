library(shiny)

m.fw <- read.csv('http://people.fas.harvard.edu/~matthewklau/data/wine_food.csv')
wine.col <- c('lightyellow','yellow','gold','lightblue','pink','red','darkred','black')
food.col <- c('green','orange','tan','brown','white','blue','darkblue','white','red','brown','grey')

shinyServer(function(input, output) {

    sliderValues <- reactive({
        if (input$data == 'All'){
            m <- m.fw
        }else if (input$data %in% colnames(m.fw)){
            m <- m.fw*0
            m[,colnames(m) == input$data] <- m.fw[,colnames(m.fw) == input$data]
        }else{
            m <- m.fw*0
            m[rownames(m) == input$data,] <- m.fw[rownames(m.fw) == input$data,]
        }
        list(m=m,
             wc=wine.col[apply(m,1,sum)!=0],
             fc=food.col[apply(m,2,sum)!=0]
             )
    }) 
                                        #
    output$values <- renderPlot({
        plotweb(sliderValues()$m,method='normal',
                col.low=sliderValues()$wc,
                bor.col.low=sliderValues()$wc,
                col.interaction='lightgrey',
                bor.col.interaction='lightgrey',
                col.high=sliderValues()$fc,
                bor.col.high=sliderValues()$fc
                )
    })
})
