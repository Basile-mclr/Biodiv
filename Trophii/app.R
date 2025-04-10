# Réinstaller les packages nécessaires
install.packages(c("shiny", "bslib", "rsconnect"))

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

rsconnect::deployApp("https://github.com/Basile-mclr/Biodiv/tree/main/Trophii")
