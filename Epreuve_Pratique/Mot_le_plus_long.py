def plus_long_mot(tab):
    mot_plus_long_provisoire = ''
    longueur_maxi_provisoire = 0
    for i in range(len(tab)):
        mot = tab[i]
        if len(mot) > longueur_maxi_provisoire:
            longueur_maxi_provisoire = len(mot)
            mot_plus_long_provisoire = mot
    return mot_plus_long_provisoire
