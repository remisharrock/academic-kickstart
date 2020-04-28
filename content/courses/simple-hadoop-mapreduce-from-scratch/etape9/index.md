---
title: Etape 9
linktitle: Etape 9
weight: 90
toc: true
type: docs
date: "2019-05-05T00:00:00+01:00"
draft: false
menu:
  simple-hadoop-mapreduce-from-scratch:
    name: Etape 9
---

## Lancer le programme SLAVE sur un ordinateur à distance.

### CLEAN et DEPLOY

Faites un CLEAN. Faites un DEPLOY sur une seule machine (modifier la liste des machines pour n'en mettre qu'une) . Vous devriez avoir la dernière version de slave.jar déployée sur une seule machine.

### Master lançant Slave à distance.

Modifier votre programme "MASTER" pour qu'il lance à distance le programme "SLAVE" **déjà déployé avec le programme "DEPLOY" sur la seule machine distante**.