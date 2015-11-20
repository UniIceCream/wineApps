library(shiny)
library(bipartite)

shinyUI(fluidPage(
    headerPanel("Wine Pairing"),
    ##sidebar
    sidebarPanel(
        selectInput('data',
                    'Food or Wine',
                    choices=c("All",
                        "white_dry",
                        "white_sweet",
                        "white_rich",
                        "sparkling",
                        "red_light",
                        "red_med",
                        "red_bold",
                        "dessert", 
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
    ##table
    ## mainPanel(
    ##     tableOutput("values")
    ##     )
    ##plot
    mainPanel(
        plotOutput("values")
        )
    )
)
