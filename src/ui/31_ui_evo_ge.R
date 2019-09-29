tabItem("evo_ge",
        fluidRow(
          box(
            title = "Nombre de naissances totales de 1900 à 2018",
            width = 12,
            plotlyOutput(outputId = "output_graphe_global", height = 500)
          ),
          valueBox(
            "Naissances",
            verbatimTextOutput(outputId = "output_nombre_global")
          )
        )
)