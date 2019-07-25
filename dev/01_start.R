# Building a Prod-Ready, Robust Shiny Application.
# 
# Each step is optional. 
# 
# 1 - On init
# 
## 1.1 - Fill the descripion & set options
## 
## Add information about the package that will contain your app

golem::fill_desc(
  pkg_name = "EICVIstac", 
  pkg_title = "Visualization of the Survey of Income and Living Conditions of Canarian households",  
  pkg_description = "This survey is published by the Instituto Canario de Estadística and provides information on the most relevant social characteristics of Canarian households",
  author_first_name = "Jorge",
  author_last_name = "López Pérez",
  author_email = "jorge@loperez.com",
  repo_url = NULL
)     

## Use this desc to set {golem} options

golem::set_golem_options()

## 1.2 - Set common Files 
## 
## If you want to use the MIT licence, README, code of conduct, lifecycle badge, and news

usethis::use_mit_license(name = "Jorge López Pérez")  # You can set another licence here
usethis::use_readme_rmd(open = FALSE)
usethis::use_code_of_conduct()
usethis::use_lifecycle_badge("Experimental")

usethis::use_news_md(open = FALSE)

## 1.3 - Add a data-raw folder
## 
## If you have data in your package
usethis::use_data(name = enc_hogares, internal = FALSE)

## 1.4 - Init Tests
## 
## Create a template for tests

golem::use_recommended_tests()

## 1.5 : Use Recommended Package

golem::use_recommended_deps()

## 1.6 Add various tools

# If you want to change the favicon (default is golem's one)
golem::remove_favicon()
golem::use_favicon() # path = "path/to/ico". Can be an online file. 

# Add helper functions 
golem::use_utils_ui()
golem::use_utils_server()

# You're now set! 
# go to dev/02_dev.R
rstudioapi::navigateToFile( "dev/02_dev.R" )

