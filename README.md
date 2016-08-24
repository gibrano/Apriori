# Apriori
Apriori algorithm of Association Rules in R code 

data=list(c("Leche", "Lechuga"),c("Lechuga", "Cerveza", "Vino", "Queso"),c("Leche", "Cerveza", "Vino", "Jugo de Naranja"),c("Lechuga", "Leche", "Cerveza", "Vino"),c("Lechuga", "Leche", "Cerveza", "Jugo de Naranja"))

apriori(data)

                                 Pattern Support
1                                Cerveza     0.8
3                                  Leche     0.8
4                                Lechuga     0.8
6                                   Vino     0.6
8                          Cerveza,Leche     0.6
9                        Cerveza,Lechuga     0.6
11                          Cerveza,Vino     0.6
16                         Leche,Lechuga     0.6
2                        Jugo de Naranja     0.4
7                Cerveza,Jugo de Naranja     0.4
12                 Jugo de Naranja,Leche     0.4
18                            Leche,Vino     0.4
20                          Lechuga,Vino     0.4
22         Cerveza,Jugo de Naranja,Leche     0.4
26                 Cerveza,Leche,Lechuga     0.4
28                    Cerveza,Leche,Vino     0.4
30                  Cerveza,Lechuga,Vino     0.4
5                                  Queso     0.2
10                         Cerveza,Queso     0.2
13               Jugo de Naranja,Lechuga     0.2
15                  Jugo de Naranja,Vino     0.2
19                         Lechuga,Queso     0.2
21                            Queso,Vino     0.2
23       Cerveza,Jugo de Naranja,Lechuga     0.2
25          Cerveza,Jugo de Naranja,Vino     0.2
29                 Cerveza,Lechuga,Queso     0.2
31                    Cerveza,Queso,Vino     0.2
32         Jugo de Naranja,Leche,Lechuga     0.2
34            Jugo de Naranja,Leche,Vino     0.2
39                    Leche,Lechuga,Vino     0.2
41                    Lechuga,Queso,Vino     0.2
42 Cerveza,Jugo de Naranja,Leche,Lechuga     0.2
44    Cerveza,Jugo de Naranja,Leche,Vino     0.2
49            Cerveza,Leche,Lechuga,Vino     0.2
51            Cerveza,Lechuga,Queso,Vino     0.2
