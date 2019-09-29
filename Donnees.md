Données
================

# Données nationales

``` r
library(data.table)

liste_prenoms <- fread("donnees/nat2018.csv")
```

``` r
str(liste_prenoms)
```

    ## Classes 'data.table' and 'data.frame':   636474 obs. of  4 variables:
    ##  $ sexe    : int  1 1 1 1 1 1 1 1 1 1 ...
    ##  $ preusuel: chr  "A" "A" "A" "AADAM" ...
    ##  $ annais  : chr  "1980" "1998" "XXXX" "2009" ...
    ##  $ nombre  : int  3 3 21 4 3 4 4 3 9 5 ...
    ##  - attr(*, ".internal.selfref")=<externalptr>

On supprime les années XXXX et les prénoms \_PRENOMS\_RARES, voir
<https://www.insee.fr/fr/statistiques/2540004#documentation>.

``` r
liste_prenoms <- liste_prenoms[preusuel != "_PRENOMS_RARES" & annais != "XXXX", ]
```

``` r
liste_prenoms <- liste_prenoms[, .(sexe = as.factor(ifelse(sexe == 1, "Masculin", "Feminin")),
                                  prenom = preusuel,
                                  annee = as.numeric(annais),
                                  nombre)]
```

``` r
# vérification des valeurs manquantes
apply(is.na(liste_prenoms), 2, sum)
```

    ##   sexe prenom  annee nombre 
    ##      0      0      0      0

``` r
summary(liste_prenoms, na.rm = TRUE)
```

    ##        sexe           prenom              annee          nombre       
    ##  Feminin :327357   Length:601221      Min.   :1900   Min.   :    3.0  
    ##  Masculin:273864   Class :character   1st Qu.:1964   1st Qu.:    4.0  
    ##                    Mode  :character   Median :1991   Median :    8.0  
    ##                                       Mean   :1982   Mean   :  137.7  
    ##                                       3rd Qu.:2007   3rd Qu.:   24.0  
    ##                                       Max.   :2018   Max.   :53706.0

# Données par département

``` r
liste_prenoms_dep <- fread("donnees/dpt2018.csv")
```

``` r
str(liste_prenoms_dep)
```

    ## Classes 'data.table' and 'data.frame':   3624994 obs. of  5 variables:
    ##  $ sexe    : int  1 1 1 1 1 1 1 1 1 1 ...
    ##  $ preusuel: chr  "A" "AADAM" "AADEL" "AADIL" ...
    ##  $ annais  : chr  "XXXX" "XXXX" "XXXX" "1983" ...
    ##  $ dpt     : chr  "XX" "XX" "XX" "84" ...
    ##  $ nombre  : int  27 27 55 3 3 175 3 17 26 3 ...
    ##  - attr(*, ".internal.selfref")=<externalptr>

On supprime les années XXXX, les prénoms \_PRENOMS\_RARES et les
départements
XX.

``` r
liste_prenoms_dep <- liste_prenoms_dep[preusuel != "_PRENOMS_RARES" & annais != "XXXX" & dpt != "XX", ]
```

``` r
liste_prenoms_dep <- liste_prenoms_dep[, .(sexe = as.factor(ifelse(sexe == 1, "Masculin", "Feminin")),
                                          prenom = preusuel,
                                          annee = as.numeric(annais),
                                          dpt,
                                          nombre)]
```

``` r
# vérification des valeurs manquantes
apply(is.na(liste_prenoms_dep), 2, sum)
```

    ##   sexe prenom  annee    dpt nombre 
    ##      0      0      0      0      0

``` r
summary(liste_prenoms_dep, na.rm = TRUE)
```

    ##        sexe            prenom              annee          dpt           
    ##  Feminin :1915889   Length:3567753     Min.   :1900   Length:3567753    
    ##  Masculin:1651864   Class :character   1st Qu.:1947   Class :character  
    ##                     Mode  :character   Median :1979   Mode  :character  
    ##                                        Mean   :1972                     
    ##                                        3rd Qu.:2001                     
    ##                                        Max.   :2018                     
    ##      nombre       
    ##  Min.   :   3.00  
    ##  1st Qu.:   4.00  
    ##  Median :   7.00  
    ##  Mean   :  21.11  
    ##  3rd Qu.:  18.00  
    ##  Max.   :6328.00
