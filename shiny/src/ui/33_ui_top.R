tabItem("top",
        fluidRow(
          box(
            title = "Top10 sur une période",
            status = "primary",
            solidHeader = TRUE,
            width = 12,
            sliderInput(inputId = "input_periode",
                        label = "choisir une période",
                        min = 1900,
                        max = 2017,
                        value = c(1900, 2017),
                        step = 1)
          )
        ),
        fluidRow(
          box(
            width = 12,
            collapsible = TRUE,
            tableOutput(outputId = "output_top")
          )
        )
)
