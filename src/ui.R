### wineApp
## MKLau
## 20 Jul 2015

### User Interface ###

shinyUI(fluidPage(
    headerPanel("Wine Pairing"),
    sidebarPanel(
        selectInput('data',
                    'Food or Wine',
                    choices=c("All",
                      "veg",
                      "veg_roasted",
                      "cheese_soft",
                      "cheese_hard",
                      "starch",
                      "fish",
                      "fish_rich",
                      "meat_white",
                      "meat_red",
                      "meat_cured",
                      "sweet",
                      "asparagus",
                      "green_beans",
                      "artichoke",
                      "chocolate"                        
                      )
                    )
        ), 

    mainPanel(
        plotOutput("mainPlot")
        ) # mainPanel
    ) # sidebarLayout
)# end UI

