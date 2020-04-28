---
title: Etape 6
linktitle: Etape 6
weight: 60
toc: true
type: docs
date: "2019-05-05T00:00:00+01:00"
draft: false
menu:
  simple-hadoop-mapreduce-from-scratch:
    name: Etape 6
---

## Gérer les timeout du MASTER.

### Un SLAVE qui simule un calcul de 10 secondes.

Modifiez votre programme SLAVE pour qu'il simule une attente de 10 secondes avant d'afficher le résultat du calcul 3+5. Pour cela utilisez

Thread.sleep(10000); 

Vérifiez le bon fonctionnement du SLAVE et constatez qu'il y a 10 secondes entre le démarrage du SLAVE et l'affichage du résultat. Attention de ne rien afficher avant les 10 secondes pour que la question suivante fonctionne correctement.

Générez de nouveau le slave.jar. Copiez-le en écrasant le slave.jar dans le dossier\
/tmp/\<votre nom d'utilisateur\>/slave.jar

Testez le lancement à partir de MASTER.

### Gérer les timeout au niveau du MASTER.

Modifier le MASTER pour qu'il attende que quelque chose soit écrit dans la sortie standard (sans erreur) ou dans la sortie d'erreurs du SLAVE pendant un certain temps maximum. Au bout du temps imparti le MASTER considère un timeout.

Il arrête les éventuels threads (si vous utilisez des threads - non obligatoire) s'occupant des sorties et/ou stoppe le processus créé avec ProcessBuilder.

Vous avez la solution ci-dessous pour implémenter les TESTs suivants:

### TEST1 :  calcul 10 secondes et timetout 2 secondes 

Testez le bon fonctionnement du timeout en lançant le SLAVE avec un timeout de 2 secondes sur les sorties (standard et d'erreur). Le timeout étant plus court (au niveau du MASTER 2 secondes) que le temps de calcul du SLAVE (10 secondes), le MASTER doit arrêter les éventuels threads (si vous en utilisez) et le processus.

### TEST 2: calcul 10 secondes et timeout 15 secondes

Testez ensuite avec un timeout de 15 secondes, il ne devrait pas y avoir de timeout.

### TEST 3: sortie d'erreur

Testez ensuite en changeant le SLAVE pour qu'il écrive non plus dans la sortie standard (sans erreur) mais dans la sortie d'erreur. Pour cela, remplacez dans le Slave les *System.out.print*... par *System.err.print*...

### SOLUTION 1 (très difficile)

passez à la SOLUTION 2 si vous êtes débutant

Vous utilisez deux threads (processus légers) pour chaque processus lourd (lancé avec ProcessBuilder). Un thread s'occupe de lire la sortie standard et l'autre la sortie d'erreur. Une solution pour gérer les timeout consiste à utiliser une structure *ArrayBlockingQueue* (taille fixe) ou *LinkedBlockingQueue* (taille dynamique) donnée en paramètre de chaque thread s'occupant de lire la sortie standard (sans erreur) ou la sortie d'erreur. Chaque thread va écrire ce qui est lu depuis les sorties dans cette structure en utilisant la méthode *put*. Le timeout de 2 secondes peut alors être paramétré lors de la récupération des éléments insérés dans la structure en utilisant la méthode *poll* sur l'*ArrayBlockingQueue* ou la *LinkedBlockingQueue* de cette manière:

*poll(2, TimeUnit.SECONDS);*

### SOLUTION 2 (très facile)

La solution 3 est facile si vous voulez voir.

Une solution consiste à:

1. rediriger la sortie d'erreur dans la sortie standard à l'aide de la méthode pb.redirectErrorStream(true) du ProcessBuilder
2. utiliser *pb.inheritIO();* pour rediriger les sorties du process dans le MASTER (c'est à dire que le MASTER va afficher les sorties du SLAVE). Attention pb.inheritIO() doit être appelé AVANT pb.start();
3. démarrer le process avec Process p = pb.start();
4. attendre la fin du process avec un waitFor sur le process qui génère un timeout en utilisant *boolean b = p.waitFor(3, TimeUnit.SECONDS); //si b vaut false il y a un timeout*
5. s'il y a un timeout vous devez détruire le process avec p.destroy();

Attention: dans cette solution et l'utilisation de inheritIO() , vous ne pourrez plus récupérer et/ou traiter la sortie standard ou la sortie d'erreur du process: par exemple, p.getInputStream() renverra un flux vide et p.getErrorStream() renverra aussi un flux vide.

### SOLUTION 3 (facile )

Il s'agit d'utiliser pb.redirectErrorStream(true) et une boucle pour lire les lignes reçues depuis p.getInputStream() sans utiliser inheritIO()

### SOLUTION 4 (moins facile )

il s'agit d'utiliser deux boucles pour lire les lignes reçues depuis p.getInputStream() et p.getErrorStream() sans utiliser inheritIO()