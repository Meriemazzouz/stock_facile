sqflite : exécute les requêtes SQLite depuis Dart.
path : construit le chemin du fichier de la base.
sqflite_common_ffi : fait fonctionner sqflite sur Windows et Linux.


## Q3.2
(1) Un seul objet est créé : le `factory` retourne toujours la même instance (singleton).
(2) `??=` : si `_db` est null, on l'ouvre et on le stocke, sinon on le réutilise.
(3) `onConfigure` est appelé à chaque ouverture, `onCreate` une seule fois : les clés étrangères doivent être activées à chaque connexion.
(4) Une seule fois, à la création du fichier .db.

## Q3.4 
onCreate affiché au premier lancement : oui
Nombre de catégories : 4

