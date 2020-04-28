---
title: Etape 8
linktitle: Etape 8
weight: 80
toc: true
type: docs
date: "2019-05-05T00:00:00+01:00"
draft: false
menu:
  simple-hadoop-mapreduce-from-scratch:
    name: Etape 8
---

## Nettoyer un ensemble de machines avec CLEAN.

### Un programme "CLEAN" qui nettoie les machines distantes.

Créez un nouveau programme CLEAN (différent de MASTER, SLAVE ou DEPLOY) qui efface votre dossier /tmp/\<votre nom d'utilisateur\>/sur les ordinateurs dont la connection SSH  fonctionne. Pour cela, vous utiliserez le même fichier texte écrit à la main et utilisé par DEPLOY contenant : les adresses IP et/ou les noms des machines que nous voulons utiliser pour notre système réparti (par exemple toutes les machines de cette salle de TP), avec un nom ou une IP par ligne dans le fichier.

CLEAN lit ce fichier ligne par ligne et efface sur chacune des machines votre dossier créé dans le dossier temporaire, en lançant la commande à distance rm -rf /tmp/\<votre nom d'utilisateur\>/. Attention de bien attendre la fin de la commande rm -rf pour être sûr que l'effacement a bien été effectué.

Votre programme CLEAN lance-t-il les commande d'effacement de manière séquentielle (les unes après les autres) ou de manière parallèle?

### Vérification du DEPLOY et du CLEAN

Vérifiez manuellement que l'effacement des dossiers a bien lieu. Ce programme vous permet de nettoyer un ensemble de machines avant de relancer un calcul. A partir de maintenant, vous pouvez déployer votre application en utilisant DEPLOY et vous pouvez nettoyer votre application en utilisant CLEAN. Vérifiez donc que DEPLOY suivi CLEAN fonctionne correctement.