---
title: Etape 7
linktitle: Etape 7
toc: true
weight: 70
type: docs
date: "2019-05-05T00:00:00+01:00"
draft: false
menu:
  simple-hadoop-mapreduce-from-scratch:
    name: Etape 7
---

## Déployer automatiquement le programme SLAVE sur un ensemble de machines.

### Un programme DEPLOY : Test de connection SSH multiple

Créer un fichier texte à la main contenant : les adresses IP et/ou les noms des machines que nous voulons utiliser pour notre système réparti (par exemple toutes les machines de cette salle de TP), avec un nom ou une IP par ligne dans le fichier.

Créer un **nouveau** programme java DEPLOY qui lit ce fichier ligne par ligne et teste si la connection SSH fonctionne bien sur chacune des machines. Attention, il s'agit bien d'un **nouveau programme** qui est séparé de MASTER ou SLAVE, **vous ne l'exécuterez qu'en cas de mise à jour du SLAVE**. Ceci permet de vérifier qu'une machine n'est pas éteinte ou qu'il y a un problème de connection (par exemple).

Pour vérifier que la connection fonctionne bien, vous pouvez faire afficher le nom de la machine distante (en exécutant la commande hostname à distance) et vérifier que l'affichage a effectivement lieu, sans erreurs. Réutilisez des parties de codes de la cinquième étape.

Votre programme DEPLOY lance-t-il les connections de manière séquentielle (les unes après les autres) ou de manière parallèle?

### Un programme DEPLOY : copie de slave.jar multiple

Modifier votre programme DEPLOY pour qu'il copie le slave.jar dans /tmp/\<votre nom d'utilisateur\>/ sur les ordinateurs dont la connection SSH  fonctionne.

Pour cela, vous devez utiliser la commande mkdir -p pour créer les répertoires dans /tmp s'ils n'existent pas déjà, **attendre que le mkdir se termine** puis copier avec scp le fichier slave.jar. **Comment faites-vous pour attendre que le mkdir se termine correctement?**

Vérifiez ensuite manuellement que le fichier a bien été copié sur les ordinateurs distants.

Attention de bien attendre la fin du mkdir avant de lancer le scp (on ne veut pas avoir de copie avant que le dossier soit effectivement créé).

Lors des copies, faites attention au caractère " / " à la fin d'un chemin :

 /tmp/toto est un chemin vers un fichier nommé toto

/tmp/toto/ est un chemin vers un dossier nommé toto.

Votre programme DEPLOY lance-t-il les copies de manière séquentielle (les unes après les autres) ou de manière parallèle?