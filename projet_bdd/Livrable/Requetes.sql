
-- Combien de fois le golden ticket à t'il été gagné et ressortir les numéros de série des tickets gagnants ?
SELECT count(numero_de_serie ), numero_de_serie 
FROM golden_ticket 
INNER JOIN lien_goldenticket_coffret 
ON  golden_ticket.id = id_goldenticket GROUP BY numero_de_serie;

-- Quel est le stock de chaque magasin ?
SELECT sum(quantite), id_magasin FROM stock_coffret GROUP BY id_magasin;
SELECT sum(quantite), id_magasin FROM stock_chocolat GROUP BY id_magasin;

-- Combien de client on acheté plus d'un coffret ?
SELECT count(id) AS nombre 
FROM commande 
JOIN lien_coffret_commande ON commande.id = id_commande 
WHERE quantite > 1 
GROUP BY id_client;

-- Combien de client posséde une carte de fidélité ? Et en poucentage ?
SELECT count(id_client) FROM carte_de_fidelite WHERE active;
SELECT count(id_client)/(SELECT count(id) FROM client)* 100 AS Pourcentage FROM carte_de_fidelite WHERE active;

-- Quels fournisseurs fournissent les chocolat de type fruit enrobé ?
SELECT nom FROM fournisseur as fo 
WHERE fo.id IN 
    (SELECT DISTINCT(id_fournisseur) 
    FROM lien_chocolat_fournisseur 
    WHERE id_chocolat IN
        (SELECT c.id FROM chocolat AS c 
        LEFT JOIN format AS f ON c.id_format = f.id 
        WHERE f.nom = "fruit enrobé"));

-- Quel ville posséde le plus de client avec une carte de fidélité active ?
SELECT DISTINCT(COUNT(ville)), ville FROM adresse 
JOIN carte_de_fidelite ON adresse.id = id_adresse 
WHERE active
GROUP BY ville DESC;

-- Quel coffret est le plus vendu ?
SELECT id_coffret, count(*) quantite FROM lien_coffret_commande GROUP BY id_coffret order by quantite DESC LIMIT 1;

-- Quel nom de domaine est le plus populaire dans les adresses mail des cartes de fidélité ?
SELECT DISTINCT(substring_index(email, '@' , -1))AS fai , count(substring_index(email, '@' , -1)) AS quantite FROM carte_de_fidelite GROUP BY fai ORDER BY quantite DESC LIMIT 1;

-- Quels sont les 2 coffrets les moins vendus ?
SELECT id_coffret, SUM(quantite) AS total FROM lien_coffret_commande WHERE id_coffret IN 
    (SELECT DISTINCT(id_coffret) FROM lien_coffret_commande) GROUP BY id_coffret ORDER BY total ASC LIMIT 2;

-- Quel est le chocolat le plus cher du prix au grammes ?
SELECT nom FROM chocolat WHERE (prix/poids) = (SELECT max(prix/poids) FROM chocolat);
