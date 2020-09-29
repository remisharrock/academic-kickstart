---
title: Etape 1
linktitle: etape 1
weight: 10
toc: true
type: docs
date: "2019-05-05T00:00:00+01:00"
draft: false
menu:
  simple-hadoop-mapreduce-from-scratch:
    name: Etape 1
---

## Faire un programme séquentiel non parallélisé qui compte le nombre d\'occurrences des mots dans un fichier.

### Prérequis et documentation

Si vous voulez faire une version Java:

- programmer en Java\
    <https://perso.telecom-paristech.fr/bellot/CoursJava/>
- manipuler l'environnement de développement Eclipse\
    <https://perso.telecom-paristech.fr/bellot/CoursJava/tps/>
- lire et écrire dans un fichier en java\
    <https://perso.telecom-paristech.fr/bellot/CoursJava/JavaIO.html>

Si vous voulez faire une version Python:

* programmer en Python\
  https://github.com/fran6w/MDI721

### Premier comptage en séquentiel pur

Implémentez un logiciel en java qui compte le nombre d'occurrences des mots d'un fichier d'entrée de manière non parallélisée (monothread, une seul thread), en utilisant un seul processeur.

Quelle structure de donnée est la plus pertinente pour stocker les résultats: List, HashMap ou HashSet ou une autre ? Pour quelle raison ?

Testez votre programme avec un fichier d'entrée *input.txt* avec comme contenu:\
\
Deer Beer River\
Car Car River\
Deer Car Beer

Résultat:

Deer 2

Beer 2

River 2

Car 3

### Premier tri en séquentiel pur

Modifiez votre programme pour trier par nombre d\'occurrences:

Résultat:

Car 3

Deer 2

Beer 2

River 2

### Deuxième tri alphabétique en séquentiel pur

Modifiez le programme pour trier alphabétiquement pour les mots à égalité du nombre d'occurrences:

Résultat:

Car 3

Beer 2

Deer 2

River 2

### Test du programme séquentiel sur le code forestier de Mayotte

Testez ensuite votre programme avec le code forestier de Mayotte disponible sur github *forestier\_mayotte.txt* :\
<https://github.com/legifrance/Les-codes-en-vigueur>

Votre programme a-t-il fonctionné du premier coup ?

Vérifiez en ouvrant le fichier texte qu'il contient bien du texte et non du code HTML.

Ne perdez pas de temps à corriger les éventuelles erreurs dues aux caractères spéciaux ou à des mots suspects ou illisibles (de toutes façons par la suite il y aura du chinois dans le texte). 

### Les 50 mots du code de la déontologie de la police nationale

Testez votre programme avec le code de déontologie de la police nationale disponible sur github *deontologie\_police\_nationale.txt* : <https://github.com/legifrance/Les-codes-en-vigueur>

De même ne perdez pas de temps à filtrer les caractères spéciaux ou autres mots bizarres. Pourquoi ? Car nous travaillerons ensuite sur des textes en chinois, japonais, arabe et d'autres langues. Si vous implémentez une étape de filtrage ici en français elle ne servira à rien par la suite. Quels sont les 5 premiers mots (qui ressemblent à des mots) parmi les 50 premiers de la liste triée résultat ? Gardez la réponse pour l'intégrer au rapport.

### Les 50 mots du code du domaine public fluvial 

Testez votre programme avec le code du domaine public fluvial *domaine\_public\_fluvial.txt*.

Quels sont les 5 premiers mots (qui ressemblent à des mots) parmi les 50 premiers de la liste triée résultat ? Gardez la réponse pour l'intégrer au rapport.

### Les 50 mots du code de la santé publique

Testez votre programme avec le code de la santé publique *sante\_publique.txt*.

Quels sont les 5 premiers mots (qui ressemblent à des mots) parmi les 50 premiers de la liste triée résultat ? Gardez la réponse pour l'intégrer au rapport.

### Chronométrage du programme séquentiel

Chronométrer votre programme sur le code de la santé publique.

Chronométrage possible avec:\
long startTime = System.currentTimeMillis();\
\...\
long endTime   = System.currentTimeMillis();\
long totalTime = endTime - startTime;

Combien de temps faut-il pour chacune des étapes:

-   Compter le nombre d'occurrences

-   Tri (par nombre d\'occurrences et alphabétique)

Gardez la réponse pour l'intégrer au rapport.

### Travailler sur des plus gros fichiers

Testez votre programme sur un cas réel: un extrait de toutes les pages internet transformées au format texte brut (format WET). Toutes les pages sur  internet au format texte sont disponibles sur <http://commoncrawl.org/the-data/get-started/> : chaque mois, environ 3 milliards de pages web, soit 250 To de données sont stockées. Ces données sont disponibles par tranche de moins d'1Go environ, vous travaillerez sur une tranche de 380Mo.

J'ai choisi une tranche en particulier pour avoir une comparaison entre nous (vous pouvez tester sur d'autres tranches si vous voulez). Téléchargez cette tranche ici:

<https://commoncrawl.s3.amazonaws.com/crawl-data/CC-MAIN-2017-13/segments/1490218189495.77/wet/CC-MAIN-20170322212949-00140-ip-10-233-31-227.ec2.internal.warc.wet.gz> 

Décompressez et obtenez le fichier CC-MAIN-20170322212949-00140-ip-10-233-31-227.ec2.internal.warc.wet 

Il s'agit d'une tranche contenant un ensemble de sites internet au format texte brut (WET).

Testez votre programme avec ce fichier en entrée. Chronométrez-le.

Gardez la réponse pour l'intégrer au rapport.

Si vous avez un erreur du type java.lang.OutOfMemoryError vous devez augmenter la taille mémoire de la machine virtuelle Java. Pour cela, sous Eclipse, suivez ce tutoriel: [http://www.planetofbits.com/eclipse/increase-jvm-heap-size-in-eclipse/](http://www.planetofbits.com/eclipse/increase-jvm-heap-size-in-eclipse/) . Par la suite, en ligne de commande, vous devrez ajouter l'option -Xms avec la valeur qui convient pour toutes les commandes java. Par exemple, java -Xms1000m pour avoir 1000Mo de mémoire alloués pour cette commande java.

