# TP en ligne de commande


## Quelques conseils
Afin de rédiger une « requête SELECT » :

Bien garder en mémoire la structure :  `SELECT ... FROM ... [JOIN... ON ...] WHERE ...`

1. je me demande où sont mes informations. Autrement dit, je me demande quelles sont les tables dont j’ai besoin. Je commence à rédiger ma clause FROM
2. je me demande comment relier mes tables entre elles (jointures). J’ajoute, le cas échéant, les tables manquantes à la clause FROM
3.. j’ajoute immédiatement les jointures sans réfléchir, à savoir `ON  table1.clefPrimaire = table2.clefEtrangere`
4. j’ajoute les restriction manquantes, à savoir, je me demande : dois-je éliminer des lignes ?  `WHERE`
5. ça y est : je peux finaliser la requête!
