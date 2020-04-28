---
title: Etape 13
linktitle: Etape 13
weight: 130
toc: true
type: docs
date: "2019-05-05T00:00:00+01:00"
draft: false
menu:
  simple-hadoop-mapreduce-from-scratch:
    name: Etape 13
---

## MapReduce - finalisations et optimisations 

### Un MASTER qui affiche le résultat à partir d'un fichier input.txt

Modifiez le MASTER pour qu'il crée les splits et les déploies sur plusieurs machines à partir d'un fichier input.txt et affiche le résultat final (la combinaison des résultats dans les dossiers reduces des différentes machines).

### Un projet Hadoop-Mapreduce complet, utilisable en environnement "BigData"

Copiez votre projet tel qu'il est à la question précédente. Ceci vous permet de garder une version de votre projet qui fonctionne avec l'exemple de démo tel que décrit lors des questions précédentes (petit fichier input.txt de démo avec 3 lignes).

Améliorez la copie de votre projet pour qu'il fonctionne avec des plus gros fichiers en input.

### Une prise en compte des pannes

De la même manière que précédemment, créez une copie de votre projet sur laquelle vous travaillez sur la robustesse: faites en sorte que votre programme fonctionne malgré des pannes inopinées de certaines machines. Pour tester, vous pouvez éteindre une ou plusieurs machines au milieu de calculs. Vous pouvez inventer d'autres pannes vous-même et présenter vos résultats. Comparez avec la méthode de robustesse utilisée par Google : <https://research.google.com/archive/mapreduce-osdi04.pdf> 

