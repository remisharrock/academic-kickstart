---
title: Etape 11
linktitle: Etape 11
weight: 110
toc: true
type: docs
date: "2019-05-05T00:00:00+01:00"
draft: false
menu:
  simple-hadoop-mapreduce-from-scratch:
    name: Etape 11
---

## MapReduce - SHUFFLE

### Le MASTER qui prépare les SLAVE à la phase de shuffle.

Modifiez le MASTER pour qu'il envoie le fichier précédemment créé qui contient la liste des machines que vous voulez utiliser pour votre projet à tous les SLAVES utilisés pour la phase de map. Copiez ce fichier dans la cible suivante pour tous les SLAVES:

/tmp/\<votre nom d'utilisateur\>/machines.txt

### Le SLAVE qui prépare la phase de shuffle.

Modifiez le SLAVE pour qu'il prépare la phase de shuffle en regroupant les clés, en calculant le "hash" pour chacune des clés et en créant un fichier ayant pour nom \<hash\>-\<hostname\>.txt dans le dossier shuffles. De la même manière que précédemment, le dossier shuffles doit être créé avant de pouvoir écrire des fichiers dedans. Vous devez attendre que le dossier shuffles soit créé avant de travailler avec. Comment attendez-vous que le dossier shuffles soit bien créé avant de travailler avec?

Le nom du fichier sera donné comme argument args du main:\
public static void main (String\[\] args)

Attention: si le fichier \<hash\>-\<hostname\>.txt existe déjà, il ne faut pas l'écraser mais plutôt continuer d'écrire dedans.

Ce nom de fichier correspond au hash, obtenu grâce à la fonction de hashage de la classe String, explications ici <https://fr.wikipedia.org/wiki/Java_hashCode()#La_fonction_de_hachage_de_la_classe_java.lang.String> , calculé à partir de la clé; Le nom de la machine, lui, est obtenu grâce à l'instruction java suivante: java.net.InetAddress.getLocalHost().getHostName()

Pour cela, votre SLAVE prend un mode de fonctionnement en argument: 1 , qui correspond au calcul du hash , puis un nom de fichier "UMx.txt" en entrée depuis le dossier maps et calcule un fichier "\<hash\>-\<hostname\>.txt " en sortie dans le dossier shuffles. Gardez le mode précédent: 0 pour la phase de map.

Testez le fonctionnement de votre SLAVE avec le fichier UM1.txt contenant\
Car 1\
Car 1\
River 1

Testez dans un terminal le JAR comme suit:

cd /tmp/\<votre nom d'utilisateur\>/\
java -jar slave.jar 1 /tmp/\<votre nom d'utilisateur\>/maps/UM1.txt\
\
Les fichiers suivants doivent être créés:

/tmp/\<votre nom d'utilisateur\>/shuffles/67508-c127-12.txt créé contenant\
Car 1\
Car 1

/tmp/\<votre nom d'utilisateur\>/shuffles/78973420-c127-12.txt créé contenant\
River 1

Comme votre SLAVE est modifié, utilisez le DEPLOY pour déployer la nouvelle version.

### Le SLAVE qui exécute la phase de shuffle.

Modifiez le SLAVE pour qu'il exécute la phase de shuffle.

Pour cela, pour chaque clé calculée lors du map, en plus de créer le fichier dans le dossier shuffles, il faut envoyer ce fichier **dans le dossier shufflesreceived** d'une des machines du fichier

/tmp/\<votre nom d'utilisateur\>/machines.txt

Pour savoir sur quelle machine il faut l'envoyer, on utilise le hash calculé à partir de la clé (une valeur entière) et le nombre de machines du fichier. Il suffit de calculer le hash modulo le nombre de machine en considérant que la première machine du fichier a pour numéro 0, la deuxième 1 etc\... La formule utilisée pour trouver la machine sur laquelle sera envoyée le shuffle sera donc

numeroMachine = hash % nbMachines

De plus, si le dossier shufflesreceived n'existe pas sur la machine réceptrice, il faudra le créer, attendre la fin de sa création, puis envoyer les fichiers dans ce dossier.

Testez le fonctionnement de votre SLAVE avec le fichier UM1.txt contenant\
Car 1\
Car 1\
River 1

et le fichier machine.txt contenant uniquement TROIS machines (on fera donc un modulo 3)

Testez dans un terminal le JAR comme suit:

cd /tmp/\<votre nom d'utilisateur\>/\
java -jar slave.jar 1 /tmp/\<votre nom d'utilisateur\>/maps/UM1.txt\
\
Les fichiers suivants doivent être créés:

/tmp/\<votre nom d'utilisateur\>/shuffles/67508-c127-12.txt créé contenant\
Car 1\
Car 1

/tmp/\<votre nom d'utilisateur\>/shuffles/78973420-c127-12.txt créé contenant\
River 1

Normalement, le fichier 67508-c127-12.txt doit être copié dans la machine numéro 2 (67508 modulo 3 = 2) **dans le dossier shufflesreceived**

et le fichier 78973420-c127-12.txt doit être copié dans la machine numéro 1 (78973420 modulo 3 = 1) **dans le dossier shufflesreceived**

****

Comme votre SLAVE est modifié, utilisez le DEPLOY pour déployer la nouvelle version.

### Un MASTER qui lance et attend la fin de la phase de shuffle.

Modifiez le MASTER pour qu'il lance la phase de shuffle une fois que la phase de map est terminée, sur plusieurs machines et affiche "SHUFFLE FINISHED". Pour cela vous utiliserez le fichier précédemment créé qui contient la liste des machines que vous voulez utiliser pour votre projet.

Pour bien synchroniser le MASTER avec les SLAVES, veillez à afficher "SHUFFLE FINISHED" qu'une fois tous les SLAVEs terminés et uniquement quand tous les SLAVEs sont terminés, PAS AVANT! Le MASTER doit donc attendre que SLAVEs se terminent correctement.

Comment faites-vous pour qu'un process lancé avec ProcessBuilder en Java attende la fin de l'exécution du processus ?

Votre programme MASTER lance-t-il les SLAVE de manière séquentielle (les uns après les autres) ou de manière parallèle?