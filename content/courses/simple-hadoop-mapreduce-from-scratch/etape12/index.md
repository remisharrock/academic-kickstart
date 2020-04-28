---
title: Etape 12
linktitle: Etape 12
weight: 120
toc: true
type: docs
date: "2019-05-05T00:00:00+01:00"
draft: false
menu:
  simple-hadoop-mapreduce-from-scratch:
    name: Etape 12
---

## MapReduce - REDUCE 

### Le SLAVE qui exécute la phase de reduce.

Modifiez le SLAVE pour qu'il prépare la phase de reduce en regroupant les fichiers avec le même hash, en calculant le reduce pour chacune des clés et en créant un fichier ayant pour nom \<hash\>.txt dans le dossier reduces. De la même manière que précédemment, le dossier reduces doit être créé avant de pouvoir écrire des fichiers dedans.

Pour cela, votre SLAVE prend un mode de fonctionnement en argument: 2 , qui correspond au calcul du reduce. Gardez les modes précédents: 0 pour la phase de map, 1 pour la phase de shuffle.

Testez le fonctionnement de votre SLAVE avec les fichiers suivants <u>DANS LE DOSSIER SHUFFLERECEIVED</u>

/tmp/\<votre nom d'utilisateur\>/shufflesreceived/67508-cxxx-12.txt contenant\
Car 1

Car 1

/tmp/\<votre nom d'utilisateur\>/shufflesreceived/67508-cxxx-13.txt contenant\
Car 1

/tmp/\<votre nom d'utilisateur\>/shufflesreceived/78973420-cxxx-12.txt contenant\
River 1

Testez dans un terminal le JAR comme suit:

cd /tmp/\<votre nom d'utilisateur\>/\
java -jar slave.jar 2

Le dossier reduces doit contenir les fichiers suivants:

/tmp/\<votre nom d'utilisateur\>/reduces/67508.txt contenant\
Car 3

/tmp/\<votre nom d'utilisateur\>/reduces/78973420.txt contenant\
River 1

Comme votre SLAVE est modifié, utilisez le DEPLOY pour déployer la nouvelle version.

### Un MASTER qui lance et attend la fin de la phase de reduce .

Modifiez le MASTER pour qu'il lance la phase de reduce une fois que la phase de shuffle est terminée, sur plusieurs machines et affiche "REDUCE FINISHED". Pour cela vous utiliserez le fichier précédemment créé qui contient la liste des machines que vous voulez utiliser pour votre projet.

Pour bien synchroniser le MASTER avec les SLAVES, veillez à afficher "REDUCE FINISHED" qu'une fois tous les SLAVEs terminés et uniquement quand tous les SLAVEs sont terminés, PAS AVANT! Le MASTER doit donc attendre que SLAVEs se terminent correctement.

### Un MASTER qui chronomètre les phases.

Modifiez le MASTER pour qu'il chronomètre les différentes phases MAP, SHUFFLE, REDUCE et pour qu'il affiche le temps de chacune des phases.

Testez sur l'exemple de départ avec les trois splits suivants:

S0.txt S1.txt S2.txt.\
S0.txt contient:

Deer Beer River

S1.txt contient:

Car Car River

S2.txt contient:

Deer Car Beer

Quelle est la phase qui prend le plus de temps ? Quelle est la phase la plus rapide ?