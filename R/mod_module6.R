#' module6 UI Function
#'
#' @description A shiny Module.
#'
#' @param id,input,output,session Internal parameters for {shiny}.
#'
#' @noRd
#'
#' @importFrom shiny NS tagList
mod_module6_ui <- function(id){
  ns <- NS(id)
  opts <- c("1", "2", "3", "4")
  tagList(
shiny::radioButtons(ns("options"),
                    "Select Option",
                    choices = opts,
                    selected = "1",
                    inline = FALSE)
  )
}

#' module6 Server Functions
#'
#' @noRd
mod_module6_server <- function(id, r){
  moduleServer( id, function(input, output, session){
    shiny::observeEvent(input$options, {

    r$options <- input$options

    if (input$options == "1") {r$plot1 <- "bar"}
    if (input$options == "2") {r$plot1 <- "line"}
    if (input$options == "3") {r$plot1 <- "point"}
    if (input$options == "4") {r$plot1 <- "violin"}

    })

  })
}

## To be copied in the UI
# mod_module6_ui("module6_1")

## To be copied in the server
# mod_module6_server("module6_1")
