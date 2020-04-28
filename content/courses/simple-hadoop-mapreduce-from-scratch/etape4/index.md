---
title: Etape 4
linktitle: Etape 4
weight: 40
toc: true
type: docs
date: "2019-05-05T00:00:00+01:00"
draft: false
menu:
  simple-hadoop-mapreduce-from-scratch:
    name: Etape 4
---

## Lancer des programmes java à distance manuellement.

### Prérequis et documentation 

- exporter un .JAR exécutable (Runnable JAR File)

- utiliser les packages et savoir lancer un programme Java en ligne de commande

### Un premier programme SLAVE sous Eclipse

Faire un programme Java nommé "SLAVE" qui calcule 3+5, affiche le résultat, sous Eclipse (Pour lancer Eclipse: Menu applications\>développement), lancer ce programme dans Eclipse (flèche verte "exécuter")

### Exportation en JAR

Exporter le programme Java en slave.jar exécutable (Java ARchive dite Runnable) sous Eclipse. Attention de bien vérifier que le JAR est de type "Runnable"/"exécutable".

### Exécution sur disque dur local

Créez le répertoire /tmp/\<votre nom d'utilisateur\>/

Copiez  slave.jar exécutable dans le répertoire /tmp/\<votre nom d'utilisateur\>/

Testez et Lancer le slave.jar en ligne de commande sur votre ordinateur local.

### Copie du JAR et exécution distante

Depuis la machine A contenant /tmp/\<votre nom d'utilisateur\>/slave.jar 

Créez à distance sur la machine B (s'il n'existe pas) un répertoire /tmp/\<votre nom d'utilisateur\>/

Copiez slave.jar sur la machine B dans le répertoire /tmp/\<votre nom d'utilisateur\>/

Exécutez à distance (depuis A sur la machine B) le slave.jar.

Quelle est la commande tapée pour effectuer cette dernière action ?

Attention: si le JAR est créé sur votre machine personnelle, vous risquez de produire un JAR avec une version supérieure de JAVA que celle installée sur les ordinateurs de l'école. Pour remédier à ce problème, configurez votre projet JAVA pour qu'il soit compatible avec la version 1.8 de JAVA. Sous Eclipse, dans les propriétés de votre projet, allez dans Java Compiler et décochez la case "Use compliance from execution environment XXXX" et puis dans le menu déroulant choisissez 1.8. Vous devrez re-générer le JAR pour obtenir un JAR compatible avec la version 1.8 de Java.
