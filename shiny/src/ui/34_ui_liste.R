tabItem("liste",
        fluidRow(
          box(
            width = 4,
            collapsible = TRUE,
            tabPanel(title = "liste",
                     radioButtons(inputId = "input_sexe",
                                  label = "Liste des prénoms :",
                                  choices = c("Masculin", "Feminin"),
                                  selected = "Masculin"))
          ),
          box(
            width = 8,
            collapsible = TRUE,
            dataTableOutput(outputId = "output_liste_sexe")
          )
        )
)
