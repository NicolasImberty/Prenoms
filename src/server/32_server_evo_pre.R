output$output_graphe_detail <- renderPlotly({
  g <- ggplot(liste_prenoms[prenom %in% input$input_prenom], aes(x = annee, y = nombre, color = sexe)) +
    geom_point() +
    facet_wrap(. ~ prenom, scales = "free") +
    labs(x = "années",
         y = "nombre de naissances") +
    theme_linedraw() +
    guides(color = guide_legend(title = ""))
  
  ggplotly(g)
})

output$output_nombre_detail <- renderTable({
  liste_prenoms[prenom %in% input$input_prenom, .(nombre = sum(nombre)), by = prenom]
})