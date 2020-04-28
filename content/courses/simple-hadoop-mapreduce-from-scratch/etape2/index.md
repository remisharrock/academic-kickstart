---
title: Etape 2
linktitle: etape 2
weight: 20
toc: true
type: docs
date: "2019-05-05T00:00:00+01:00"
draft: false
menu:
  simple-hadoop-mapreduce-from-scratch:
    name: Etape 2
---


## Travailler avec plusieurs ordinateurs en réseau.

### Prérequis et documentation 

- avoir un compte et pouvoir se connecter aux machines de l'école (contacter la DSI de l'école dans le cas contraire)

- lancer un interpréteur de commande (console linux , shell) pour taper des commandes:\
  [https://fr.wikipedia.org/wiki/Interpréteur\_de\_commandes](https://fr.wikipedia.org/wiki/Interpr%C3%A9teur_de_commandes)\
  [https://fr.wikipedia.org/wiki/Shell\_Unix](https://fr.wikipedia.org/wiki/Shell_Unix)

- connaître quelques commandes de base sous Linux\
  <https://fr.wikipedia.org/wiki/Commandes_Unix>

- <https://prod-edx-mktg-edit.edx.org/course/linux-basics-the-command-line-interface> 

- savoir qu'un ordinateur a un nom d'hôte (hostname) et plusieurs adresses IP:\
  <https://en.wikipedia.org/wiki/Hostname>\
  [https://fr.wikipedia.org/wiki/Adresse\_IP](https://fr.wikipedia.org/wiki/Adresse_IP)

- savoir qu'un ordinateur peut faire partie d'un domaine (comme à l'école, le domaine enst.fr ou le domaine telecom-paristech.fr )\
  <https://fr.wikipedia.org/wiki/Nom_de_domaine>

- savoir qu'un nom peut être transformé en adresse IP (et inversement) par un serveur qui gère le système du nom de domaine (DNS, Domain Name System)\
  <https://fr.wikipedia.org/wiki/Domain_Name_System>

- se connecter à distance à un ordinateur avec SSH en ligne de commande\
  <https://fr.wikipedia.org/wiki/Secure_Shell>\
  [http://www.commentcamarche.net/faq/74-se-connecter-a-distance-avec-ssh-linux](http://www.commentcamarche.net/faq/74-se-connecter-a-distance-avec-ssh-linux)

### Nom court, nom long

Quel est le nom COURT de votre ordinateur (le nom simple sans le domaine) ?   quel est le nom LONG de votre ordinateur (le nom avec le domaine) ? Comment les connaître en ligne de commande ? Sur les ordinateurs de l'école, est-il possible d'obtenir ces noms autrement qu'en ligne de commande ? Ajoutez les réponses à votre rapport.

### Adresse ip

Comment connaître les adresses (plusieurs) IP de votre ordinateur en ligne de commande ? Autrement (en passant par un site internet par exemple) ? Ajoutez les réponses à votre rapport.

### Du nom vers l'IP

Comment à partir du nom d'un ordinateur, obtenir les adresses IP en ligne de commande ? Ajoutez les réponses à votre rapport.

### De l'IP vers le nom

Comment, à partir d'une adresse IP, obtenir les noms associés en ligne de commande ? Ajoutez les réponses à votre rapport.

### Ping pong à l'intérieur!

Testez la communication avec d'autres ordinateurs (pas le vôtre) depuis le réseau de l'école en utilisant la commande ping (pour arrêter le ping faire CTRL + C). suivi du nom court, du nom long, de l'IP. Les trois méthodes fonctionnent-elles ? Ajoutez les réponses à votre rapport.

### Ping pong à l'extérieur

Si vous effectuez le ping depuis un réseau différent, il est possible que celui ne fonctionne pas (filtrage des accès vers le réseau de l'école depuis un réseau extérieur), contactez la DSI pour mettre en place une connection VPN / OpenVPN afin d'être sur le même réseau que les machines en salle de TP.

### Calculer en ligne de commande sur l'ordinateur local

Comment lancer un calcul en ligne de commande sur votre ordinateur (par exemple 2 + 3) ? Parmi les multiples réponses possibles, lesquelles permettent de lancer le calcul et d'obtenir le résultat en appuyant une seule fois sur la touche \<Entrée\> ? Ajoutez les réponses à votre rapport.

### Calculer en ligne de commande sur un ordinateur distant

Comment lancer un calcul  (par exemple 2 + 3) en ligne de commande sur un autre ordinateur (à distance) ? Il faudra certainement vous authentifier avec un mot de passe. Comment obtenir le résultat du calcul immédiatement après avoir tapé son mot de passe ? Ajoutez les réponses à votre rapport.

### Calculer à distance sans mot de passe

Comment lancer un calcul à distance en utilisant SSH sans taper le mot de passe et en une seule ligne de commande (c'est à dire qu'on appuie sur \<Entrée\> et on a le résultat directement)?

Attention: en utilisant vos ordinateurs personnels( a priori ce n'est pas le cas sur les ordinateurs de l'école), il faut parfois vérifier le "fingerprint" avec le message:

The authenticity of host \'mint.phcomp.co.uk (78.32.209.33)\' can\'t be established.\
RSA key fingerprint is 6a:de:e0:af:56:f8:0c:04:11:5b:ef:4d:49:ad:09:23.\
Are you sure you want to continue connecting (yes/no)? yes

Pour ne plus avoir à rentrer quoi que ce soit dans le terminal, il faut donc désactiver la vérification de ce "fingerprint", sinon vous aurez l'erreur 

Host key verification failed

Suivez ce guide pour désactiver la vérification de "fingerprint":

<https://www.shellhacks.com/disable-ssh-host-key-checking/>

De plus, si vous travaillez depuis votre ordinateur personnel, pour ne pas avoir à taper le mot de passe à chaque fois, il faut générer une clé privée et une clé publique SANS PASSPHRASE (ne pas mettre de mot de passe lors de la génération des clés) et installer la clé publique sur un ordinateur de l'école, en copiant le contenu de la clé publique dans le fichier authorized\_keys. Ce fichier authorized\_keys est a placer dans le dossier .ssh (attention, il y a un point devant ssh ".ssh"), lui même situé dans votre dossier personnel sur les machines de l'école. Pour cela, suivez un guide sur internet de création de clés publiques privées pour SSH. Attention, votre clé privée doit également être située dans le dossier .ssh de votre ordinateur personnel. La bonne configuration est donc: avoir une clé privée sur l'ordinateur personnel dans le dossier .ssh de votre ordinateur personnel et avoir une clé publique sur un ordinateur de l'école dans le dossier .ssh d'un ordinateur de l'école. Attention: sur Windows, il est parfois compliqué de créer le dossier .ssh. Sur Windows, il est également compliqué de générer des clés avec puttygen car le format des clés n'est pas compatible avec openssh utilisé à l'école. Puttygen a une option de conversion du format des clés (dans le menu conversions) pour convertir vers le fomat openssh. Le plus simple est de générer les clés sur une machine de l'école puis de copier la clé privée sur votre ordinateur perso plutôt que de générer la clé sur votre ordi perso\... Demandez de l'aide à vos confrères experts en cas de pb. Ne restez pas coincé longtemps sur cette étape!
