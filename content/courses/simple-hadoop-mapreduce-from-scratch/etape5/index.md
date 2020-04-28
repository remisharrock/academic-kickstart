---
title: Etape 5
linktitle: Etape 5
weight: 50
toc: true
type: docs
date: "2019-05-05T00:00:00+01:00"
draft: false
menu:
  simple-hadoop-mapreduce-from-scratch:
    name: Etape 5
---

## Lancer des programmes en ligne de commande depuis java et afficher la sortie standard et la sortie d'erreur.

### Prérequis et documentation

- utiliser le processBuilder en java\
  <http://docs.oracle.com/javase/7/docs/api/java/lang/ProcessBuilder.html> .

- lancer un exécutable (ou une commande) en ligne de commande depuis un programme écrit en java

- connaître les sorties standard et les sorties d'erreurs

### Un programme MASTER java qui lance un autre programme en ligne de commande!

Ecrire un programme java nommé "MASTER" qui lance la commande suivante en utilisant ProcessBuilder:

ls -al /tmp

(vous pouvez aussi tester cette commande dans un terminal avant)

Récupérer et afficher la sortie de cette commande.

Vous devez utiliser ProcessBuilder de cette façon:

ProcessBuilder pb = new ProcessBuilder(\"ls\", "-al", "/tmp");

### Un programme MASTER java qui gère les erreurs de lancement d'un autre programme en ligne de commande.

Modifiez votre programme"MASTER" pour qu'il affiche la sortie d'erreur en cas d'erreur lors de l'exécution de la commande. Testez la sortie d'erreur avec une commande qui échoue avec un sortie d'erreur. Essayez par exemple d'exécuter la commande "ls /jesuisunhero".

Explications: si on tape la commande "ls /jesuiunhero", le dossier /jesuisunhero n'existant pas, on aura une erreur de type "impossible d'accéder à /jesuisunhero: aucun fichier ou dossier de ce type." qui s'affiche dans la sortie d'erreur. En effet, il y a deux sorties: les sorties standards (sans erreur) et les sorties d'erreurs.

Vous devez utiliser ProcessBuilder de cette façon:

ProcessBuilder pb = new ProcessBuilder(\"ls\", \"/jesuisunhero");

Sur pb, vous pouvez récupérer le flux de la sortie standard et le flux de la sortie d'erreur.

### Un programme MASTER java qui lance un slave.jar en ligne de commande.

Modifiez votre programme "MASTER" pour qu'il lance "SLAVE", c'est à dire slave.jar situé sur la même machine que "MASTER" dans le dossier\
/tmp/\<votre nom d'utilisateur\>/slave.jar

