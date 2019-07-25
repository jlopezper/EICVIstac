#' @import shiny
app_ui <- function() {
  tagList(
    # Leave this function for adding external resources
    golem_add_external_resources(),
    # List the first level UI elements here 
    fluidPage(
      theme = shinythemes::shinytheme(theme = "flatly"),
      navbarPage(title = "Encuesta de Ingresos y Condiciones de Vida de los Hogares Canarios",
                 navbarMenu("Encuesta de hogares",
                            tabPanel("Visualización de variables categóricas")
                            )
      ),
      mod_categorical_plot_ui("categorical_plot_ui_1")
    )
  )
}

#' @import shiny
golem_add_external_resources <- function(){
  
  addResourcePath(
    'www', system.file('app/www', package = 'EICVIstac')
  )
 
  
  tags$head(
    golem::activate_js(),
    golem::favicon()
    # Add here all the external resources
    # If you have a custom.css in the inst/app/www
    # Or for example, you can add shinyalert::useShinyalert() here
    #tags$link(rel="stylesheet", type="text/css", href="www/custom.css")

  )

}
