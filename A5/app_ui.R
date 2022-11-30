library(shiny)
library(shinydashboard)
library(markdown)
source("app_server.R")

intro <- tabPanel("Introduction",
                  htmlOutput("intro"))

yearRange <- range(data$year)

linePlot_sidebar <- sidebarPanel(

    selectInput("Plot", "Select a Plot", 
                choices = c("CO2 emissions From Flaring",
                             "CO2 emissions From Gas",
                             "CO2 emissions From Land Use",
                             "CO2 emissions From Oil",
                             "CO2 emissions From Coal")),
    
    sliderInput(inputId = "year_choice",
                label = "Year:",
                min = yearRange[1],
                max = yearRange[2],
                value = yearRange),
    
    actionButton("submit", "Submit")
    
)

linePlot_main <- mainPanel(
  plotlyOutput("chart"),
  h3("Chart Introduction"),
  p("This page contain 5 different line plots that shows the CO2 emissions from different sources in million tonnes in the world. The reason why I decide to inculude this plot is because it can shows the changes of CO2 emissions from different sources over years and help people understand the huge difference on CO2 emissions between the past and present.")
)

linePlot_panel <- tabPanel(
  "Line Plot",
  
  titlePanel("World's CO2 Emissions from different sources"),
  
  sidebarLayout(
    linePlot_sidebar,
    linePlot_main
  )
  
  
)

ui <- fluidPage(navbarPage("Climate",
           intro, 
           linePlot_panel
           ))


