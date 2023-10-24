# odyssey-lite-modeling-sql

# Part 1

Modéliser une version simplifiée de Odyssey à l'aide d'un MCD puis d'un MLD :

On accède à l’application via un compte identifié par un email et un mot de passe
Les Wilders sont regroupés dans des promos (cews)
Chaque crew dispose d’un agenda avec une liste d’évènements (cours, livecoding, rétro, …)
Les formateurs sont affectés à des crews
Les wilders peuvent accéder à des quêtes regroupées en catégories
Un formateur peut attribuer des badges à ses élèves

correction : https://app.diagrams.net/#G1gKFcuiHKwxhRig7uJvLxK4SeuA83Mevk

# Part 2

Créer la bdd à l'aide [du dump suivant](dump-odyssey-lite.sql)

Ecrire les requetes SQL pour réaliser les opérations suivantes :

Afficher la liste des élèves d’un crew
Afficher la moyenne d’age des élèves
Créer un évènement
Mettre a jour le contenu d’une quête
Supprimer les crews n’ayant aucun élève
Afficher le titre des 10 dernières quêtes avec le nom de la catégorie associée
Afficher les catégories associées à moins de 5 quêtes.
Afficher chaque crew avec le nombre d’évènements prévus cette semaine pour chaque crew
Attribuer un badge à un élève
Afficher le palmarès des badges obtenus (nom de l’élève + nb badges, ordonné par le nombre de badges décroissant)
Afficher le nombre d’heure de formation prévues (somme des durées des events) pour chaque crew
