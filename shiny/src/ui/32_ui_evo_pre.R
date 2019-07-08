tabItem("evo_pre",
        fluidRow(
          box(
            title = "Evolution par prénom",
            status = "info",
            solidHeader = TRUE,
            selectInput(inputId = "input_prenom",
                        label = "Choix des prénoms :",
                        selected = "NICOLAS",
                        choices = liste_pre,
                        multiple = TRUE)
          ),
          box(
            title = "Nombre de naissances de 1900 à 2017",
            tableOutput(outputId = "output_nombre_detail")
          )
        ),
        fluidRow(
          box(
            width = 12,
            plotlyOutput(outputId = "output_graphe_detail", height = 500)
          )
        )
)
