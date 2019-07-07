output$output_graphe_global <- renderPlotly({
  ggplotly(g_global)
})

output$output_nombre_global <- renderPrint({
  liste_prenoms[, sum(nombre)]
})
