# global
# chargement des paquets
# calcul généraux

library(shiny)
library(shinydashboard)
library(data.table)
library(ggplot2)
library(plotly)

load("donnees/prenoms.RData")

liste_pre <- liste_prenoms[, .(unique(prenom))]

evo_global <- liste_prenoms[, .(nombre = sum(nombre)), by = annee]

g_global <- ggplot(evo_global, aes(x = annee, y = nombre)) +
  geom_point(color = "blue") +
  geom_line(color = "blue") +
  labs(x = "années",
       y = "nombre de naissances") +
  theme_linedraw() +
  guides(color = guide_legend(title = ""))
