---
title: Vote électronique
---

Le vote électronique m'a toujours chagriné. Je parle ici de sa version <acronym title="In Real Life">IRL</acronym>, c'est-à-dire de la machine à voter dans les bureaux de vote. Pour le vote en ligne, la problèmatique est différente, c'est celle de l'anonymat du vote. Ça sera pour un prochain billet.

Le problème du [vote électronique](https://fr.wikipedia.org/wiki/Vote_électronique), c'est qu'on ne peut pas le vérifier. Même en le rendant open-source, il faudrait s'assurer que chaque version du logiciel utilisé correspondrait au code source audité (M. Ken Thompson en parle très bien dans [Reflections on Trusting Trust](http://www.acm.org/classics/sep95/) ...). Et puis "les machines sont chères", et puis "faut les installer/maintenir", et puis "j'y comprends rien", et puis "le bug de l'an 2000", et puis "ça marche jamais ces merdes d'informatique" etc etc ...

Pourtant, comme très souvent, la solution existe: dans l'équilibre et la simplicité. Je verrai cela de la façon suivante:

  - L'électrice (ou l'électeur, ne soyons pas sexiste) prend une enveloppe à l'entrée du bureau de vote et rentre dans l'isoloir,
  - Elle voit devant elle un panneau avec chaque liste en concours, et un bouton associé à chaque liste,
  - Elle choisit la liste (ou le candidat) pour qui elle souhaite voter en appuyant sur le bon bouton,
  - Le bouton, via un Arduino, envoie un "hit" à un serveur de comptage des votes et sort le bulletin *via* une simple imprimante à ticket de caisse,
  - L'électrice glisse le bulletin dans l'enveloppe,
  - Elle sort et met son bulletin dans l'urne.
  
On conserve donc le vote traditionnel, le seul qu'on puisse, <acronym title="As Far As I Know">AFAIK</acronym>, faire vérifier par n'importe qui sachant lire et compter. On peut également détecter les fraudes (<acronym title="Also Known As">aka</acronym> le bourrage des urnes) via le serveur de comptage des voix. Et puis en se sortant les doigts, on arrivera à pondre un algorithme de comptage pas trop con qui prendra en compte les éventuelles erreurs de vote aussi bien que les petits malins voulant jouer «Lettre à Élise» sur le panneau de sélection dans l'isoloir. Côté client, le logiciel à développer est minimaliste et de toute façon, la vérification pourra (et devrait) toujours se faire manuellement.

Dans mon précédent job, on imprimait les «tickets» du *bug tracker* sur une [petite imprimante sans marque](http://www.amazon.com/Smart-Cool%C2%AE-SC-58H-Printer-Thermal/dp/B010RVUASI/ref=sr_1_2). C'était fun.

Le meilleur des (deux) mondes :)