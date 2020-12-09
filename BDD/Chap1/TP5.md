# TP en ligne de commande

Schéma relationnel de la base Zoo  : 
1. Une table **Races** qui contient les races des animaux avec les champs suivants : 
   * `id` : un identifiant (clé primaire), 
   * `nom` : le nom de la race, 
   * `type_food` : le type de nourriture que cette race mange à choisir entre les valeurs 'Carnivore','Herbivore','Omnivore', 
   * `duree_vie` : sa durée de vie moyenne (en année), 
   * `aquatique` :  si cet animal est aquatique ou non.
2. Une table **Animaux** qui contient les champs suivants : 
   * `id` : un identifiant (clé primaire), 
   * `race` : la race (clé étrangère)  qui fait référence à la clé primaire de la table Races, 
   * `date_nais` : la date de naissance (qui peut être null), 
   * `sexe` : le sexe (à choisir entre 'M' et 'F' et peut être null aussi),
   * `pseudo` : un pseudo  
   * `commentaire` :  un commentaire éventuel (peut être null).
3. Une table Personnels qui stocke le personnel du Zoo (soigneur, nettoyeurs…) et contient
les champs suivants : 
   * `id` : un identifiant (clé primaire), 
   * `nom` : le nom (non null), 
   * `prenom` : le prénom (non null), 
   * `date_nais` : la date de naissance (non null), 
   * `sexe` : le sexe ('H'/'F') 
   * `fonction` : la fonction (le nom d'un métier, non null) 
   * `salaire` : le salaire (nombre réel à 5 chiffres avant la virgule et 2 chiffres après comme 15263,25)
4. Une table Enclos qui contient les champs suivants : 
   * `zone` : un identifiant qui correspond à sa position codée sous la d'une lettre et de 2 chiffres (ex : A04) c'est la clé primaire, 
   * `nom` : le nom de l'enclos, 
   * `capacite` : sa capacité maximale d'animaux (non null), 
   * `taille` : sa taille (en m², peut être null),
   * `eau` : un booléen indiquant la présence d'eau ou non 
   * `responsable` :  la référence à un membre du personnel, responsable de l'enclos (clé étrangère).
5.  Une table Loc_animaux qui stocke la position des animaux. Elle est constituée de 5 champs : 
   * `id` : un identifiant numérique (clé primaire), 
   * `animal` : la référence à un animal (clé étrangère)
   * `enclos` : la référence à un enclos (clé étrangère), 
   * `date_arrivee` : la date d'arrivée 
   * `date_sortie` : date de sortie de l'enclos (peut être null si l'animal est encore dans l'enclos).
6.  Une table Soigneurs qui contient la liste des personnels qui peuvent soigner une race d'animal donnée. La table contient 
   * `id` : un identifiant (clé primaire),
   * `pers` : une référence vers un personnel (clé étrangère)
   * `race` :  une référence vers une race (clé étrangère).

## Quelques conseils
Bien garder en mémoire la structure :  `SELECT ... FROM ... [JOIN... ON ...] WHERE ...`

1. je me demande où sont mes informations. Autrement dit, je me demande quelles sont les **tables** dont j’ai besoin. Je commence à rédiger ma clause FROM
2. je me demande comment relier mes tables entre elles (jointures). J’ajoute, le cas échéant, les tables manquantes à la clause FROM
3. j’ajoute immédiatement les jointures sans réfléchir, à savoir `ON  table1.clefPrimaire = table2.clefEtrangere`
4. j’ajoute les restriction manquantes, à savoir, je me demande : dois-je éliminer des lignes ?  `WHERE`
5. ça y est : je peux finaliser la requête, en pensant au `;`


Pour chacune des questions ci-dessous, écrire **une** requête SQL en ligne de commande:
* utiliser un éditeur (comme NotePad++ pour écrire votre "brouillon")
* tester la requête en ligne de commande
* corriger éventuellement la requête jusqu'à ce qu'elle soit correcte.
   * En ligne de commande, on peut utiliser `SHOW Tables ;` pour obtenir le nom des tables 
   * `DESCRIBE nom_table;` pour la description de tous les champs d'une table.

# Questions
1. Combien y a-t-il d'animaux dans le zoo?
2. Quelles sont les différentes races présentes dans le zoo?
1. Afficher la liste des membres du personnel, trié par fonction puis par ordre alphabétique de nom.
5. Quelle est la moyenne (AVG) des salaires des personnels ?
6. Quelle est la moyenne (AVG) des salaires des personnels de moins de 30 ans ?
7. Quelle est la moyenne (AVG) des salaires des personnels de plus de 30 ans ?
3. Combien y a-t-il de pingouins?
4. Quels sont les pseudos des loups ?
1. Donnez le nom et le prénom de toutes les personnes qui peuvent soigner les chats.
2. Qui peut soigner Lizzie ?



