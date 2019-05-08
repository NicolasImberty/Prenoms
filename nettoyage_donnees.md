Nettoyage des données
================


``` r
library(data.table)

# données annuelles

liste_prenoms <- fread("nat2017.txt")
```

``` r
str(liste_prenoms)
```

    ## Classes 'data.table' and 'data.frame':   620993 obs. of  4 variables:
    ##  $ sexe    : int  1 1 1 1 1 1 1 1 1 1 ...
    ##  $ preusuel: chr  "A" "A" "A" "AADAM" ...
    ##  $ annais  : chr  "1980" "1998" "XXXX" "2009" ...
    ##  $ nombre  : int  3 3 22 4 3 4 4 9 5 3 ...
    ##  - attr(*, ".internal.selfref")=<externalptr>

``` r
liste_prenoms <- liste_prenoms[, .(sexe = as.factor(ifelse(sexe == 1, "Masculin", "Feminin")),
                                  prenom = preusuel,
                                  annee = as.numeric(annais),
                                  nombre)]
```

``` r
# on supprime les valeurs manquantes
apply(is.na(liste_prenoms), 2, sum)
```

    ##   sexe prenom  annee nombre 
    ##      0      3  34166      0

``` r
liste_prenoms <- liste_prenoms[!is.na(prenom) & !is.na(annee), ]

summary(liste_prenoms, na.rm = TRUE)
```

    ##        sexe           prenom              annee          nombre       
    ##  Feminin :319671   Length:586825      Min.   :1900   Min.   :    3.0  
    ##  Masculin:267154   Class :character   1st Qu.:1963   1st Qu.:    4.0  
    ##                    Mode  :character   Median :1990   Median :    8.0  
    ##                                       Mean   :1981   Mean   :  142.5  
    ##                                       3rd Qu.:2006   3rd Qu.:   24.0  
    ##                                       Max.   :2017   Max.   :53820.0
