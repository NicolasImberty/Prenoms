dashboardBody(
  tabItems(
    
    source("src/ui/31_ui_evo_ge.R", local = TRUE)$value,
    
    source("src/ui/32_ui_evo_pre.R", local = TRUE)$value,
    
    source("src/ui/33_ui_top.R", local = TRUE)$value,
    
    source("src/ui/34_ui_liste.R", local = TRUE)$value,
    
    source("src/ui/35_ui_dpt.R", local = TRUE)$value
    
  )
)