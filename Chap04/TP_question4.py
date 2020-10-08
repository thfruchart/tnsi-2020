def occurrences(t):
    '''renvoie le dictionnaire des occurrences de t'''
    d = {}
    for v in t :
        if v in d:
            d[v] += 1
        else:
            d[v]=1
    return d

def compare_dico(d1,d2):
    '''renvoie True si et seulement si
    les dictionnaires d1 et d2 contiennent
    exactement les mêmes clés et les mêmes valeurs'''
    for k in d1:
        if k not in d2:
            return False
        elif d1[k] != d2[k]:
            return False
    for k in d2:
        if k not in d1:
            return False
        elif d1[k] != d2[k]:
            return False
    return True

def tri(t):
    for i in range(len(t)-1):
        m = i
        for j in range(i + 1, len(t)):
            if t[j] < t[m]:
                m = j
        t[i],t[m] = t[m],t[i]

def est_trie(t):
    '''renvoie True si le tableau t est trié par ordre croissant et False sinon'''
    for i in range(len(t)-1):
        if t[i]>t[i+1]:
            return False
    return True

def teste_tri(t):
    ''' teste la fonction tri() sur le tableau t'''
    occ1 = occurrences(t)
    tri(t)
    occ2 = occurrences(t)
    assert est_trie(t), 'tableau non trié'
    assert compare_dico(occ1,occ2), "les occurrences ne sont pas conservées"

from random import randint
def random_tab(n,a,b):
    return [ randint(a,b) for i in range(n)]

for n in range(100):
    teste_tri(random_tab(n, 0 , 0 ) )
    teste_tri(random_tab(n, -n*n , n*n   ) )
    teste_tri(random_tab(n, -n//4 , n//4) )

print('test OK')