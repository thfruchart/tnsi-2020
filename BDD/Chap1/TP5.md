# TP en ligne de commande

Vous allez travailler avec une base Zoo dans laquelle il y a : 
1. Une table **Races** qui contient les races des animaux avec les champs suivants : 
   * un identifiant (clé primaire), 
   * le nom de la race, 
   * le type de nourriture que cette race mange à choisir entre les valeurs 'Carnivore','Herbivore','Omnivore', 
   * sa durée de vie moyenne (en année), 
   * et enfin si cet animal est aquatique ou non.
2. Une table **Animaux** qui contient les champs suivants : un identifiant (clé primaire), 
la race : clé étrangère  qui fait référence à la clé primaire de la table Races, la date de naissance (qui peut être null), le sexe (à choisir entre 'M' et 'F' et peut
être null aussi), un pseudo (son nom, non null) et un commentaire éventuel (peut être
null).
c) Une table Personnels qui stocke le personnel du Zoo (soigneur, nettoyeurs…) et contient
les champs suivants : un identifiant (clé primaire), le nom (non null), le prénom (non
null), la date de naissance (non null), le sexe ('H'/'F') la fonction (le nom d'un métier, non
null) et le salaire (nombre réel à 5 chiffres avant la virgule et 2 chiffres après comme
15263,25 / non null).
d) Une table Enclos qui contient les champs suivants : un identifiant qui correspond à sa
position codée sous la d'une lettre et de 2 chiffres (ex : A04) c'est la clé primaire, le nom
de l'enclos, sa capacité maximale d'animaux (non null), sa taille (en m², peut être null),
un booléen indiquant la présence d'eau ou non et enfin, la référence à un membre du
personnel, responsable de l'enclos.
e) Une table Loc_animaux qui stocke la position des animaux. Elle est constituée de 5
champs : un identifiant (numérique, clé primaire artificielle), la référence à un animal
(non null), la référence à un enclos (peut être null), la date d'arrivée et de sortie de
l'enclos (peut être null).
f) Une table Soigneurs qui contient la liste des personnels qui peuvent soigner une race
d'animal donnée. La table contient un identifiant (clé primaire numérique artificielle),
une référence vers un personnel et une référence vers une race.

## Quelques conseils
Bien garder en mémoire la structure :  `SELECT ... FROM ... [JOIN... ON ...] WHERE ...`

1. je me demande où sont mes informations. Autrement dit, je me demande quelles sont les **tables** dont j’ai besoin. Je commence à rédiger ma clause FROM
2. je me demande comment relier mes tables entre elles (jointures). J’ajoute, le cas échéant, les tables manquantes à la clause FROM
3. j’ajoute immédiatement les jointures sans réfléchir, à savoir `ON  table1.clefPrimaire = table2.clefEtrangere`
4. j’ajoute les restriction manquantes, à savoir, je me demande : dois-je éliminer des lignes ?  `WHERE`
5. ça y est : je peux finaliser la requête, en pensant au `;`
