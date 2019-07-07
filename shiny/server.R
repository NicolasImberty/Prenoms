# serveur
# déclaration et calcul des sorties

shinyServer(function(input, output, session) {
  
  source("src/server/31_server_evo_ge.R", local = TRUE)
  
  source("src/server/32_server_evo_pre.R", local = TRUE)
  
  source("src/server/33_server_top.R", local = TRUE)
  
  source("src/server/34_server_liste.R", local = TRUE)
  
})
