# Before typing 'runApp(), type 'library(shiny)'

library(shiny)
shinyUI(pageWithSidebar(
        
    #Converting temperature from degree Celsius to Fahrenheit
    headerPanel("Temperature Conversion"),
    
    sidebarPanel(
         h3('Instructions'),
         p('Enter any  temperature value. The value will be converted
           to Fahrenheit and shown on the right'),
         numericInput('celsius', 'Temperature ºC', 0, min = -10, max = 200, step = 10),
         submitButton('Submit')
    ),
    mainPanel(
           h3('Temperature  in ºF'),
           verbatimTextOutput("outtemp"),
           
           p('This data product is converting temperatures from 
             degree Celsius to Fahrenheit'),
           
           h5('References'),
           p('Caledon laboratory chemicals: Temperature Conversions Formulas:
             http://www.caledonlabs.com/temperature_conversion.pdf')
         )
    )
  )