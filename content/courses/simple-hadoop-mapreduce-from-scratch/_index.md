---
# Course title, summary, and position.
linktitle: "Implémentation de Hadoop MapReduce en partant de zéro"
summary: Dans ce cours, vous apprendrez à implémenter une version simple du concept MapReduce en partant de zéro. C'est une sorte de ré-implémentation de Hadoop, codé en langage Java.
weight: 5

# Page metadata.
title: "Travaux pratiques - implémentation de Hadoop MapReduce \"from scratch\" en Java."
date: "2018-09-09T00:00:00Z"
lastmod: "2018-09-09T00:00:00Z"
draft: false  # Is this a draft? true/false
toc: true  # Show table of contents? true/false
type: docs  # Do not modify.

# Add menu entry to sidebar.
# - name: Declare this menu item as a parent with ID `name`.
# - weight: Position of link in menu.
menu:
  simple-hadoop-mapreduce-from-scratch:
    name: Introduction
---

## Objectifs pédagogiques ##

Ce cours se présente sous la forme de Travaux Pratiques guidés. Vous utiliserez plusieurs ordinateurs connectés en réseaux et le langage de programmation Java pour implémenter une version simple du concept MapReduce. L'implémentation la plus connue est également codée en Java, il s'agit de [Hadoop](https://hadoop.apache.org/).
Vous visualiserez la Loi d'Ahmdal et la démontrerez empiriquement. Vous implémenterez le concept MapReduce et définirez une architecture répartie. Vous comparerez cette architecture répartie en terme de performances avec une architecture non répartie, séquentielle et en tirerez des conclusions.

## Préparez un document de travail qu'il faudra rendre à la fin de l'unité d'enseignement. ##

Créez un document dans lequel vous allez expliquer votre implémentation au fur et à mesure, les problèmes rencontrés, les solutions innovantes, vos idées et réflexions, vos pistes d'améliorations. Il s'agit plutôt d'écrire ce qui vous étonne et ce que vous avez appris d'intéressant plutôt que de répondre de manière directe aux questions posées. Les questions dans les étapes de mise en place du projet n'ont pas besoin de réponse dans ce document, uniquement celles faisant référence à l'implémentation de votre projet et aux résultats de calcul obtenus ainsi que les discussions autour de ces résultats. Ce document sera un rapport de travail qu'il faut rendre à la fin du cours.

## Chronométrage et justification de la loi d'Ahmdal. ##

Tout le long du projet, vous obtiendrez des mesures de chronométrage et calculerez différents "speedup" (des accélérations) pour en déduire des taux de parallélisation (c'est à dire la portion de code parallèle). Pour chaque nouvelle mesure, vous devez exploiter ces mesures et les discuter. Évidemment, pour obtenir une accélération il faut comparer deux systèmes et les comparer **dans des conditions les plus similaires possibles, c'est à dire à minima avec le même jeu de donnée en entrée et en prouvant que vous avez le même résultat en sortie**.
Pour prouver que vous obtenez le même résultat en sortie avec deux systèmes différents, vous utiliserez un troisième système (un outil/logiciel que vous trouverez vous-même) qui fait le même calcul (par exemple la fréquence des mots) et piocherez au hasard des mots pour savoir si dans le cas du système 1 et dans le cas du système 2 vous avez les même résultats.

