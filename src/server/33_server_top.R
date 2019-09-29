output$output_top <- renderTable({
  m1 <- input$input_periode[1]
  m2 <- input$input_periode[2]
  
  liste_prenoms[annee >= m1 & annee <= m2, .(nombre = sum(nombre)), by = prenom][order(-nombre)][1:10]
})