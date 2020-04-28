---
title: Etape 3
linktitle: etape 3
weight: 30
toc: true
type: docs
date: "2019-05-05T00:00:00+01:00"
draft: false
menu:
  simple-hadoop-mapreduce-from-scratch:
    name: Etape 3
---

## Travailler avec des fichiers locaux ou sur un serveur NFS.

### Prérequis et documentation

- pouvoir transférer un fichier d'un ordinateur à un autre en utilisant la commande SCP (Secure Copy): <https://fr.wikipedia.org/wiki/Secure_copy> 

- connaître l'architecture d'un système de fichier NFS (Network File System) : <https://fr.wikipedia.org/wiki/Network_File_System> 

### Chemin absolu

Quel est le chemin absolu de votre répertoire personnel, votre *home directory* ? (commandes "cd" puis "pwd")

### Un fichier dans le répertoire personnel

Créez un fichier fperso.txt contenant le texte "bonjour" dans votre répertoire personnel (sur un ordinateur de l'école). 

Vérifiez le contenu du fichier avec cette commande exactement:

cat \~/fperso.txt

### Ou se trouve le fichier dans le répertoire personnel

Ce fichier est-il sur le disque dur de l'ordinateur ou autre part ? Comment savoir où est stocké physiquement ce fichier, à l'aide de quelle commande ? 

### Un dossier et un fichier dans le répertoire temporaire

Créez un dossier /tmp/\<votre nom d'utilisateur\> en remplaçant \<votre nom d'utilisateur\> (ne pas mettre les caractères \< et \> ).

Créez un fichier ftemp.txt dans le répertoire /tmp/\<votre nom d'utilisateur\> .

Vérifiez le contenu du fichier avec cette commande **exactement**:

cat /tmp/\<votre nom d'utilisateur\>/ftemp.txt

Ce dossier et ce fichier sont-ils sur le disque dur de l'ordinateur ou autre part ? Comment savoir où sont stockés physiquement ces éléments, à l'aide de quelle commande ?

### Trois ordinateurs A B C. On commence avec A. Utilisation du serveur NFS.

Pour les questions suivantes, utilisez trois ordinateurs: A, B C.

Connectez vous physiquement (avec un clavier, une souris et un écran) sur l'ordinateur A.

Sur A, créez un fichier text.txt contenant le texte "mon texte sur NFS" dans votre répertoire personnel.

Vérifiez que le fichier existe et vérifiez son contenu. Pour cela, sur A, utilisez la commande :

cat \~/text.txt

### Trois ordinateurs A B C. On continue sur B et sur C. Utilisation du serveur NFS.

Connectez-vous à B (physiquement ou à distance) et vérifiez que le fichier text.txt est également présent dans votre répertoire personnel. Pour cela, sur B, utilisez la commande :

cat \~/text.txt

De même, connectez-vous à C et vérifiez que text.txt est aussi présent.

Remarquez que vous n'avez pas copié le fichier mais qu'il est présent sur A, B et C grâce au serveur NFS.

### Trois ordinateurs A B C. On commence avec A. Utilisation des disques locaux.

Déconnectez vous de B et de C et revenez sur l'ordinateur A.

Sur A, créez un dossier /tmp/\<votre nom d'utilisateur\> et un fichier local.txt contenant le texte "mon texte sur disque local" dans ce dossier /tmp/\<votre nom d'utilisateur\>.

Vérifiez que le fichier existe et vérifiez son contenu. Pour cela, sur A, utilisez la commande :

cat /tmp/\<votre nom d'utilisateur\>/local.txt

### Trois ordinateurs A B C. On continue sur B et sur C. Utilisation des disques locaux.

Connectez-vous à B et C (physiquement ou à distance) et vérifiez que le dossier \<votre nom d'utilisateur\> ainsi que le fichier local.txt **ne sont pas** présent dans /tmp . Pour cela vérifiez avec la commande:

ls /tmp

### Depuis A, copier de A vers B avec les disques locaux.

Comment, **à partir de A**, transférer le fichier /tmp/local.txt **sur B** (dans /tmp/\<votre nom d'utilisateur\>/local.txt) en utilisant scp ? Vérifiez que le fichier est bien présent sur B. Attention: si vous avez une erreur "no such file or directory" (ou l'équivalent français), vous devez d'abord créer le répertoire /tmp/\<votre nom d'utilisateur\>/ avec la commande mkdir -p associée à un ssh pour l'ordinateur distant.

### Depuis A, copier de B vers C avec les disques locaux.

Comment, **à partir de A**, transférer le fichier **de B** (depuis /tmp/\<votre nom d'utilisateur\>/local.txt) **vers C** (dans /tmp/\<votre nom d'utilisateur\>/local.txt) ? Vérifiez que le fichier est bien présent sur C. De même que la question précédentes, vous devez créer les répertoires /tmp/\<votre nom d'utilisateur\>/ correspondants.
