output$output_liste_sexe <- renderDataTable({
  s <- input$input_sexe
  
  liste_prenoms[sexe == s, .(unique(prenom))][order(V1)]
})