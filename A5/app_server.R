library(shiny)
library(tidyverse)
library(plotly)
library(markdown)

climate <- read.csv("https://raw.githubusercontent.com/owid/co2-data/master/owid-co2-data.csv")


# Define server logic required to draw a histogram
server <- function(input, output) {
  
  
  
  output$intro <- renderUI({           
    includeMarkdown(knitr::knit('intro.Rmd'))          
  })
  

  observeEvent(input$submit,{
    output$chart <- renderPlotly({
      
      data <- climate %>% 
        group_by(year) %>% 
        filter(country == "World",
               year > input$year_choice[1], year < input$year_choice[2])
      
      flaring_plot <- data %>% 
        select(year, flaring_co2) %>%
        ggplot(mapping = aes(x = year, flaring_co2))+
        geom_line() +
        labs(title = "Changes in CO2 emissions From Flaring ",
             x = "Year",
             y = "CO2 emissions From Flaring (in million tonnes)")
      
      gas_plot <- data %>% 
        select(year, gas_co2) %>%
        ggplot(mapping = aes(x = year, gas_co2))+
        geom_line()+
        labs(title = "Changes in CO2 emissions From Gas ",
             x = "Year",
             y = "CO2 emissions From Gas (in million tonnes)")
      
      landUse_plot <- data %>% 
        select(year, land_use_change_co2) %>%
        ggplot(mapping = aes(x = year, land_use_change_co2))+
        geom_line()+
        labs(title = "Changes in CO2 emissions From Land Use ",
             x = "Year",
             y = "CO2 emissions From Land Use (in million tonnes)")
      
      oil_plot <- data %>% 
        select(year, oil_co2) %>%
        ggplot(mapping = aes(x = year, oil_co2))+
        geom_line()+
        labs(title = "Changes in CO2 emissions From Oil ",
             x = "Year",
             y = "CO2 emissions From Oil (in million tonnes)")
      
      coal_plot <- data %>% 
        select(year, coal_co2) %>%
        ggplot(mapping = aes(x = year, coal_co2))+
        geom_line()+
        labs(title = "Changes in CO2 emissions From Coal ",
             x = "Year",
             y = "CO2 emissions From Coal (in million tonnes)")
      
      switch(isolate(input$Plot),
             "CO2 emissions From Flaring" = flaring_plot,
             "CO2 emissions From Gas" = gas_plot,
             "CO2 emissions From Land Use" = landUse_plot,
             "CO2 emissions From Oil" = oil_plot,
             "CO2 emissions From Coal" = coal_plot)
    })
    
  })
    
}
