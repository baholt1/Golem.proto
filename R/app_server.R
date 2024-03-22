#' The application server-side
#'
#' @param input,output,session Internal parameters for {shiny}.
#'     DO NOT REMOVE.
#' @import shiny
#' @noRd
app_server <- function(input, output, session) {
  # Your application server logic
  mod_module1_server("module1_1")
  mod_module2_server("module2_1")
  mod_module3_server("module3_1")
  mod_module4_server("module4_1")
  mod_module5_server("module5_1")
}
