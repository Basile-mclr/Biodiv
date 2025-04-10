
# Réinstaller les packages nécessaires
install.packages(c("shiny", "bslib", "rsconnect"))

# Charger les packages
library(shiny)
library(bslib)
library(rsconnect)

# Définir le thème
theme <- bs_theme(version = 5, bootswatch = "yeti") # Utilisez un thème valide

# Définir l'interface utilisateur
ui <- page_fixed(
  theme = theme,
  fileInput("file1", "Choose a File"),
  verbatimTextOutput("file1_contents")
)

# Définir le serveur
server <- function(input, output) {
  output$file1_contents <- renderPrint({print(input$file1)})
}

# Créer l'application Shiny
shinyApp(ui, server)

# Configurer les informations de compte shinyapps.io
rsconnect::setAccountInfo(name='wcpym7-basile-mauclaire',
   token='04CCCFBA57D8149243B59B24212B05B6',
   secret='jT8GK0hW6/fR6A3ewkCnv6JkOzeEgD9ZfdpeNjzR')

# Ajouter un répertoire temporaire pour les bibliothèques R
.libPaths(c("/tmp/Rlibs", .libPaths()))

# Déployer l'application
rsconnect::deployApp('/c/Users/J1149071/Biodiv/Trophii')
