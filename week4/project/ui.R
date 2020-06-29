#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

shinyUI(fluidPage(
    titlePanel("Illustration of k-means clustering"),
    
    sidebarLayout(
        sidebarPanel(
            numericInput("numPoints", "Number of points in the simulation:",
                         value = 100, min = 20, max = 1000, step = 1),
            numericInput("numClusters", "Number of clusters in the k-means algorithm:",
                         value = 2, min = 1, max = 10, step = 1),
            checkboxInput("showClusters", "Show clusters", value = FALSE)
        ),

        mainPanel(
            tabsetPanel(type = "tabs",
                        tabPanel("Output", br(), plotOutput("plot1", height = 500, width = 500)),
                        tabPanel("Help", br(), htmlOutput("help")))
        )
    )
))
