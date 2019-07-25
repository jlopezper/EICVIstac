#' @import shiny
app_server <- function(input, output,session) {
  # List the first level callModules here
  callModule(mod_categorical_plot_server, "categorical_plot_ui_1")
}
