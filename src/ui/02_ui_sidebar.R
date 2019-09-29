dashboardSidebar(
  sidebarMenu(
    menuItem(
      "Evolution générale",
      tabName = "evo_ge",
      icon = icon("bar-chart")
    ),
    menuItem(
      "Evolution par prénom",
      tabName = "evo_pre",
      icon = icon("dashboard")
    ),
    menuItem(
      "Top",
      tabName = "top",
      icon = icon("signal")
    ),
    menuItem(
      "Liste",
      tabName = "liste",
      icon = icon("th-list")
    ),
    menuItem(
      "Département",
      tabName = "dpt",
      icon = icon("map-o")
    ),
    menuItem(
      "source",
      icon = icon("file-code-o"),
      href = "https://www.data.gouv.fr/fr/datasets/ficher-des-prenoms-de-1900-a-2018/"
    )
  )
)