# Apriori
Apriori algorithm of Association Rules in R code 

data=list(c("Leche", "Lechuga"),c("Lechuga", "Cerveza", "Vino", "Queso"),c("Leche", "Cerveza", "Vino", "Jugo de Naranja"),c("Lechuga", "Leche", "Cerveza", "Vino"),c("Lechuga", "Leche", "Cerveza", "Jugo de Naranja"))

apriori(data, min_sup = 0.5)
```
           Pattern Support
1          Cerveza     0.8
3            Leche     0.8
4          Lechuga     0.8
6             Vino     0.6
11   Cerveza,Leche     0.6
2  Cerveza,Lechuga     0.6
31    Cerveza,Vino     0.6
41   Leche,Lechuga     0.6
```


