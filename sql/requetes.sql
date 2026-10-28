SELECT * FROM produits;
 1	Huile d'olive 1 L	18.5	24	1	2026-10-01T09:00:00	1
2	Couscous moyen 1 kg	2.3	40	1	2026-10-01T09:05:00	1
3	Eau minérale 1,5 L	0.85	120	1	2026-10-02T10:00:00	2
4	Jus d'orange 1 L	3.2	0	0	2026-10-02T10:10:00	2
5	Savon de Marseille	2.9	15	1	2026-10-03T11:00:00	3
6	Cahier 96 pages	1.6	60	1	2026-10-04T08:30:00	4


-- Q1.5.2 Produits en rupture de stock
-- Résultat : Jus d'orange 1 L (quantite = 0)
SELECT * FROM produits WHERE quantite = 0;

-- Q1.5.3 Produits du plus cher au moins cher
-- Résultat : Huile d'olive (18.5) en premier, Eau minérale (0.85) en dernier
SELECT * FROM produits ORDER BY prix DESC;

-- Q1.5.4 Nom de chaque produit avec le nom de sa catégorie
-- Résultat : 6 lignes (produit, catégorie)
SELECT p.nom, c.nom AS categorie
FROM produits p
INNER JOIN categories c ON c.id = p.categorie_id;

-- Q1.5.5 Nombre de produits par catégorie
-- Résultat : Alimentation 2, Boissons 2, Hygiène 1, Papeterie 1
SELECT c.nom, COUNT(p.id) AS nb_produits
FROM categories c
LEFT JOIN produits p ON p.categorie_id = c.id
GROUP BY c.id, c.nom;

-- Q1.5.6 Valeur totale du stock
-- Résultat : 777.5
SELECT SUM(prix * quantite) AS valeur_stock FROM produits;


 -- Q4.1 Insérer la catégorie Électroménager
INSERT INTO categories (nom, description) VALUES ('Électroménager', 'Petits appareils');

-- Q4.6 Insérer le produit Stylo bleu
INSERT INTO produits (nom, prix, quantite, disponible, date_ajout, categorie_id)
VALUES ('Stylo bleu', 0.500, 100, 1, '2026-10-05T09:00:00', 4);