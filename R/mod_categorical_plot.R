# Module UI
  
#' @title   mod_categorical_plot_ui and mod_categorical_plot_server
#' @description  A shiny Module.
#'
#' @param id shiny id
#' @param input internal
#' @param output internal
#' @param session internal
#'
#' @rdname mod_categorical_plot
#'
#' @keywords internal
#' @export 
#' @importFrom shiny NS tagList 
mod_categorical_plot_ui <- function(id){
  ns <- NS(id)
  tagList(
    selectInput(
      ns("variable"),
      "Variable de interés",
      c("HSI001EA")
    ),
    plotly::plotlyOutput(ns("categorical_plot"), width = "90%", height = "600px")
  
  )
}
    
# Module Server
    
#' @rdname mod_categorical_plot
#' @export
#' @import ggplot2 
#' @import dplyr
#' @keywords internal
    
mod_categorical_plot_server <- function(input, output, session){
  ns <- session$ns
  output$categorical_plot <- plotly::renderPlotly({
    g <-
      enc_hogares %>%
      ggplot(aes(input$variable, fill = FI)) + facet_wrap(~ISLA) +
      geom_bar(position = "fill") +
      theme_minimal() +
      scale_y_continuous(labels = scales::percent) +
      scale_fill_brewer(palette="Blues") +
      xlab(input$variable)
    
    plotly::ggplotly(g)
  })
}

## To be copied in the UI
# mod_categorical_plot_ui("categorical_plot_ui_1")
    
## To be copied in the server
# callModule(mod_categorical_plot_server, "categorical_plot_ui_1")

