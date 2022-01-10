# Objectif : quart de tour sur une image

![image de tigre](tigre.jpg)

## Copier dans un répertoire de travail les fichiers
* tigre.jpg (image de 256 pixels par 256 pixels)
* decoupe-image.py
* decoupe-image2.py
## Utilisation du module PIL (Python Image Library)
* `from PIL import Image` : importation de la classe Image 
* `im = Image.open("tigre.jpg")` : définition d'une variable im contenant l'image ouverte
* `px=im.load()`  : définition de la variable px contenant un tableau de pixels
   * on accède alors au pixel de coordonnées x, y avec la syntaxe `px[x,y]`
## Travail à faire
* ouvrir dans EduPython le fichier `decoupe-image.py`
   * analyser le code
   * exécuter le programme
   * visualiser le fichier `decoupage.jpg`
   * comprendre ce que fait ce programme
* procéder de même avec le fichier `decoupe-image2.py`
* écrire une fonction récursive `def rotation_aux(px, x, y, t)` qui:
   * prend en arguments
      * un tableau de pixelx `px`
      * des coordonnées entières `x`, `y`
      * un entier `t` (taille de la partie à faire tourner)
   * et qui modifie le tableau `px`, de sorte à faire tourner d'un quart de tour les pixels de l'image situés 
      * entre `x` (inclus) et `x+t` (exclu) en abscisse
      * entre `y` (inclus) et `y+t` (exclu) en ordonnée
   * on écrira cette fonction de manière récursive
