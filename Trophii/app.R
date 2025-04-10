options(repos = c(CRAN = "https://cran.r-project.org"))

# Définir le chemin de la bibliothèque
.libPaths("C:/Users/J1149071/AppData/Local/R/win-library/4.4")

# Réinstaller les packages nécessaires
install.packages(c("shiny", "bslib", "rsconnect"), lib = "C:/Users/J1149071/AppData/Local/R/win-library/4.4")

# Charger les packages
library(shiny)
library(bslib)
library(rsconnect)

theme <- bs_theme(version = 5, bootswatch = "yeti")  # Utilisez un thème valide

ui <- page_fixed(
  theme = theme,
  fileInput("file1", "Choose a File"),
  verbatimTextOutput("file1_contents")
)

server <- function(input, output) {
  output$file1_contents <- renderPrint({print(input$file1)})
}

shinyApp(ui, server)

rsconnect::setAccountInfo(name='wcpym7-basile-mauclaire',
                          token='04CCCFBA57D8149243B59B24212B05B6',
                          secret='jT8GK0hW6/fR6A3ewkCnv6JkOzeEgD9ZfdpeNjzR')

rsconnect::deployApp("C:/Trophii")
