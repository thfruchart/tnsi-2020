# Objectif : quart de tour sur une image

![image de tigre](tigre.jpg)

## copier dans un répertoire de travail les fichiers
* tigre.jpg (image de 256 pixels par 256 pixels)
* decoupe-image.py
* decoupe-image2.py
## Utilisation du module PIL (Python Image Library)
* `from PIL import Image` : importation de la classe Image 
* `im = Image.open("tigre.jpg")` : définition d'une variable im contenant l'image ouverte
* `px=im.load()`  : définition de la variable px contenant un tableau de pixels
   * on accède alors au pixel de coordonnées x, y avec la syntaxe `px[x,y]`
