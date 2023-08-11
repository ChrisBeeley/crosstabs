#' crosstabs UI Function
#'
#' @description A shiny Module.
#'
#' @param id,input,output,session Internal parameters for {shiny}.
#'
#' @noRd
#'
#' @importFrom shiny NS tagList
mod_crosstabs_ui <- function(id){
  ns <- NS(id)
  tagList(

      DT::dataTableOutput(ns("crosstabs"))

  )
}

#' crosstabs Server Functions
#'
#' @noRd
mod_crosstabs_server <- function(id){
  moduleServer( id, function(input, output, session){
    ns <- session$ns

    output$crosstabs <- DT::renderDT({




    })

  })
}
