
INSERT INTO `adresse` (`id`, `type_de_la_voie`, `nom_de_la_voie`, `code_postal`, `ville`) VALUES
(1, 'Rue', 'Paul carré', 37000, 'TOURS'),
(2, 'Rue', 'Sainte Catherine ', 45000, 'ORLEANS'),
(3, 'Rue ', 'Sainte Catherine', 45000, 'ORLEANS'),
(4, 'Allée', 'courbevoie', 18000, 'MILLAU'),
(5, 'Rue', 'du Mont Blanc', 74000, 'ANNECY'),
(6, 'Place', 'Savoisier', 13000, 'MARSEILLE'),
(7, 'Avenue', '1359 Frank ', 1157, 'MASACHUSETTS'),
(8, 'Rue', 'Nationale', 75000, 'PARIS'),
(9, 'Rue', 'Paul rond', 35000, 'RENNES'),
(10, 'Rue', 'Sainte Marie', 37000, 'TOURS'),
(11, 'Rue ', 'Jean Marie Hugo', 45000, 'ORLEANS'),
(12, 'Rue', 'Léon Blum', 18000, 'BOURGES'),
(13, 'Place', 'du Mont Blanc', 63000, 'CLERMONT FERRAND'),
(14, 'Avenue', 'du Pommier', 14000, 'CAEN'),
(15, 'Rue', '13 bis ', 69000, 'LYON'),
(16, 'Rue', 'Nationale', 42000, 'SAINT ETIENNE'),
(17, 'Rue', 'du Roquet Fou', 75000, 'PARIS'),
(18, 'Place', 'Yves du Marché', 13000, 'MARSEILLE'),
(19, 'Avenue', '567 Ipon ', 1157, 'LAS VEGAS'),
(20, 'Rue', 'De la Chocolaterie', 37000, 'TOURS');

INSERT INTO `format` (`id`, `nom`, `description`) VALUES
(1, 'crotte', 'Petites friandises en forme de boules'),
(2, 'bonbon', 'Un petit bonbon au chocolat ou une praline.'),
(3, 'palet', 'Biscuit plat au chocolat'),
(4, 'fruit enrobé', 'Fruits enrobés de chocolat'),
(5, 'tablette', 'Tablette de chocolat'),
(6, 'rocher', 'Confiserie sphérique'),
(7, 'truffe', 'Confiserie à base de chocolat et de crème fraiche ');

INSERT INTO `client` (`id`) VALUES
(1),(2),(3),(4),(5),(6),(7),(8),(9),(10),(11),(12),(13),(14),(15),(16),(17),(18),(19),(20),(21),(22),(23),(24),(25),(26),(27),(28),(29),(30),(31),(32),(33),(34),(35),(36),(37),(38),(39),(40),(41),(42),(43),(44),(45),
(46),(47),(48),(49),(50),(51),(52),(53),(54),(55),(56),(57),(58),(59),
(60);

INSERT INTO `chocolat` (`id`, `nom`, `poids`, `prix`, `type`, `id_format`, `description`) VALUES
(1, 'Figue de Calabacitas', 30, 3.5, 'LAIT', 4, 'Figue entière enrobée d un chocolat au lait et éclats verts de graines de courges.'),
(2, 'Truffe Equateur', 25, 4.2, 'NOIR', 7, 'Truffe au chocolat noir au cacao d Equateur enrobée de chocolat au lait.'),
(3, 'Abricot de malatya',25,3.25,'LAIT',4,'Chocolat au lait et éclats d écorces d oranges confites'),
(4, 'Citron vert de murcie',15,2.7,'NOIR',6,'Chocolat noir 60% et éclats de noix de coco'),
(5, 'Poire Blanquilla',20,4.2,'NOIR',1,'Chocolat noir et grains de physalis'),
(6, 'Cerise Amerena',15,3.4,'NOIR',4,'Cerise entière enrobée de chocolat noir 60% de cacao et parsemé de pépites de cranberries'),
(7, 'Datte et Amande',20,3.9,'LAIT',4,'Datte enrobée de chocolat au lait et au cœur une amande torréfiée'),
(8, 'Truffe Vietnam',30,4.9,'LAIT',7,'Truffe de chocolat au lait au cacao du Vietnam avec éclats de caramel d\'Isigny, enrobée de chocolat noir et paillettes de chocolat au lait.'),
(9, 'Mini rocher',19,3.2,'BLANC',6,'Praliné et éclats croustillants'),
(10, 'Palet Willy Wonka',20,4.1,'BLANC',3,'Puissante ganache de chocolat noir au cacao de Sao Tomé'),
(11, 'Vanillon',21,4.6,'BLANC',6,'Délicate crème légère vanille et noisette entière');

INSERT INTO `golden_ticket` (`id`, `numero_de serie`) VALUES
(1, 4254678),
(2, 3427902),
(3, 2349011),
(4, 6333459),
(5, 1483333);

INSERT INTO `coffret` (`id`, `nom`, `description`, `prix`, `datedecreation`, `poids`, `image`) VALUES
(1, 'Coffret Découverte', 'Super coffret de découverte', 20, '2019-01-09 00:00:00', 80, 0x89504e470d0a1a0a0000000d49484452000000180000001802030000009d19d56b000000017352474201d9c92c7f000000097048597300000b1300000b1301009a9c1800000009504c54450026ffffffffff00006071967d0000001249444154789c636060080d5db58a61b0530072092fd1821cbf650000000049454e44ae426082),
(2, 'Petit coffret de découverte', 'Petit coffret de découverte très très sympa', 10, '2019-01-08 00:00:00', 40, 0x3c73766720786d6c6e733d22687474703a2f2f7777772e77332e6f72672f323030302f737667222076696577426f783d22302030203234203234222077696474683d22323422206865696768743d223234223e0a093c7374796c653e0a0909747370616e207b2077686974652d73706163653a707265207d0a093c2f7374796c653e0a3c2f7376673e),
(3, 'Grand Coffret Découverte', 'Giga coffret de découverte', 40, '2019-12-09 00:00:00', 100, 0x89504e470d0a1a0a0000000d49484452000000180000001802030000009d19d56b000000017352474201d9c92c7f000000097048597300000b1300000b1301009a9c1800000009504c54450026ffffffffff00006071967d0000001249444154789c636060080d5db58a61b0530072092fd1821cbf650000000049454e44ae426082),
(4, 'Grand Coffret de l\'habitué', 'Giga coffret de l\'habitué', 600, '2019-12-09 00:00:00', 150, 0x89504e470d0a1a0a0000000d49484452000000180000001802030000009d19d56b000000017352474201d9c92c7f000000097048597300000b1300000b1301009a9c1800000009504c54450026ffffffffff00006071967d0000001249444154789c636060080d5db58a61b0530072092fd1821cbf650000000049454e44ae426082),
(5, 'Super Coffret de l\'habitué', 'Super coffret de l\'habitué', 80, '2019-12-09 00:00:00', 200, 0x89504e470d0a1a0a0000000d49484452000000180000001802030000009d19d56b000000017352474201d9c92c7f000000097048597300000b1300000b1301009a9c1800000009504c54450026ffffffffff00006071967d0000001249444154789c636060080d5db58a61b0530072092fd1821cbf650000000049454e44ae426082),
(6, 'Petit Coffret de l\'habitué', 'Petit coffret de l\'habitué', 50, '2019-12-09 00:00:00', 70, 0x89504e470d0a1a0a0000000d49484452000000180000001802030000009d19d56b000000017352474201d9c92c7f000000097048597300000b1300000b1301009a9c1800000009504c54450026ffffffffff00006071967d0000001249444154789c636060080d5db58a61b0530072092fd1821cbf650000000049454e44ae426082),
(7, 'Grand Coffret du Bonheur', 'Giga coffret du Bonheur', 100, '2019-12-09 00:00:00', 300, 0x89504e470d0a1a0a0000000d49484452000000180000001802030000009d19d56b000000017352474201d9c92c7f000000097048597300000b1300000b1301009a9c1800000009504c54450026ffffffffff00006071967d0000001249444154789c636060080d5db58a61b0530072092fd1821cbf650000000049454e44ae426082),
(8, 'Super Coffret du Bonheur', 'Super coffret du Bonheur', 95, '2019-12-09 00:00:00', 300, 0x89504e470d0a1a0a0000000d49484452000000180000001802030000009d19d56b000000017352474201d9c92c7f000000097048597300000b1300000b1301009a9c1800000009504c54450026ffffffffff00006071967d0000001249444154789c636060080d5db58a61b0530072092fd1821cbf650000000049454e44ae426082),
(9, 'Petit Coffret du bonheur', 'Petit coffret du bonheur', 40, '2019-12-09 00:00:00', 30, 0x89504e470d0a1a0a0000000d49484452000000180000001802030000009d19d56b000000017352474201d9c92c7f000000097048597300000b1300000b1301009a9c1800000009504c54450026ffffffffff00006071967d0000001249444154789c636060080d5db58a61b0530072092fd1821cbf650000000049454e44ae426082);

INSERT INTO `lien_goldenticket_coffret` (`id_goldenticket`, `id_coffret`) VALUES
(1, 6);

INSERT INTO `responsable` (`id`, `nom`, `prenom`, `id_adresse`) VALUES
(1, 'Boivin', 'Jean-Marie', 2),
(2, 'Pierre', 'Jean', 9);

INSERT INTO `magasin` (`id`, `id_adresse`, `id_responsable`) VALUES
(1, 8, 1),
(2, 5, 2),
(3, 3, 2),
(4, 8, 1),
(5, 3, 2);

INSERT INTO `commande` (`id`, `id_client`, `date`, `date_de_retrait`, `reference`,`id_magasin`) VALUES
(1, 1, '2019-01-16 00:00:00', '2019-01-24 00:00:00', 'CODE1',1),
(2, 3, '2019-01-09 00:00:00', '2019-01-31 00:00:00', 'CODE2',1),
(3, 4, '2019-01-16 00:00:00', '2019-01-24 00:00:00', 'CODE3',1),
(4, 47, '2019-01-09 00:00:00', '2019-01-31 00:00:00', 'CODE4',1),
(5, 35, '2019-01-16 00:00:00', '2019-01-24 00:00:00', 'CODE1',1),
(6, 23, '2019-01-15 00:00:00', '2019-01-31 00:00:00', 'CODE2',1),
(7, 10, '2019-01-16 00:00:00', '2019-01-24 00:00:00', 'CODE3',1),
(8, 39, '2019-05-09 00:00:00', '2019-12-31 00:00:00', 'CODE4',1),
(9, 30, '2019-11-23 00:00:00', '2020-01-31 00:00:00', 'CODE1',1),
(10, 10, '2019-04-23 01:00:00', '2019-01-24 00:00:00', 'CODE2',1),
(11, 15, '2020-02-09 00:00:00', '2020-04-30 00:00:00', 'CODE3',1),
(12, 2, '2030-06-15 00:00:00', '2030-08-31 00:00:00', 'CODE4',1);

INSERT INTO `fournisseur` (`id`, `nom`, `id_adresse`) VALUES
(1, 'Chez Marie', 1),
(2, 'Chocolaterie Riand', 2),
(3, 'Usine de la Manche', 3),
(4, 'Chocolaterie Médiéval', 4),
(5, 'Plestre', 5),
(6, 'Chez Lavoisier', 6),
(7, 'L\'Everest des chocolats', 7);


INSERT INTO `carte_de_fidelite` (`id`, `id_client`, `nom`, `prenom`, `id_adresse`, `email`, `active`) VALUES
(1, 1, 'RODRIGUEZ', 'Eric', 8, 'rodriguez.eric@gmail.com', 1),
(2, 2, 'JEANNE', 'Marie', 9, 'marie.jeanne@gmail.com', 0),
(3, 3, 'HOGAN', 'Hulk', 10, 'hulk.hogan@gmail.com', 1),
(4, 4, 'DUPONT', 'Capucine', 11, 'dupont.capucine@gmail.com', 1),
(5, 5, 'BLANC', 'Michel', 12, 'michel.blanc@gmail.com', 0),
(6, 6, 'SHELBY', 'Thomas', 13, 'shelby.thomas@gmail.com', 1),
(7, 7, 'WHITE', 'Walter', 14, 'walter.white@gmail.com', 0),
(8, 8, 'GRIMES', 'Rick', 15, 'grimes.rick@gmail.com', 1),
(9, 9, 'TARGARYEN', 'Daenerys', 16, 'targaryen.daenerys@gmail.com', 1),
(10, 10, 'DUSS', 'Jean-Claude', 17, 'duss.jean-claude@gmail.com', 0),
(11, 11, 'SIMPSON', 'Homer', 18, 'simpson.homer@gmail.com', 1),
(12, 12, 'ZIDANE', 'Zinedine', 19, 'zinedine.zidane@gmail.com', 0),
(13, 13, 'JOSPIN', 'Lionel', 20, 'jospin.lionel@gmail.com', 0);


INSERT INTO `lien_chocolat_coffret` (`id_chocolat`, `id_coffret`, `quantite`) VALUES
(1, 1, 8),
(2, 2, 2),
(1, 2, 2),
(3, 3, 1),
(4, 5, 1),
(4, 1, 3),
(5, 6, 1);

INSERT INTO `lien_chocolat_fournisseur` (`id_chocolat`, `id_fournisseur`) VALUES 
('1', '1'),
('2', '3'),
('3', '6'),
('4', '3'),
('4', '5'),
('5', '1'),
('6', '4'),
('7', '7'),
('8', '7'),
('9', '4'),
('10', '2');

INSERT INTO `lien_coffret_commande` (`id_commande`, `id_coffret`, `quantite`) VALUES 
('1', '1', '2'), 
('1', '2', '1'), 
('2', '6', '1'),
('3', '8', '1'),
('4', '3', '1'),
('5', '7', '1'),
('6', '3', '1'),
('6', '3', '1'),
('7', '8', '1'),
('8', '8', '1'),
('8', '3', '1'),
('9', '4', '1'),
('9', '2', '1'),
('9', '2', '1'),
('10', '4', '1'),
('10', '6', '1'),
('11', '2', '1'),
('12', '4', '1'),
('12', '6', '1');



INSERT INTO `stock_chocolat` (`id_chocolat`, `quantite`, `id_magasin`) VALUES
(1, 40, 1),
(2, 64, 1),
(3, 46, 1),
(4, 137, 1),
(5, 80, 1),
(6, 55, 1),
(7, 67, 1),
(8, 23, 1),
(9, 45, 1),
(10, 78, 1),
(1, 34, 2),
(2, 65, 2),
(3, 76, 2),
(4, 87, 2),
(5, 23, 2),
(6, 2, 2),
(7, 198, 2),
(8, 34, 2),
(9, 32, 2),
(10, 12, 2);

INSERT INTO `stock_coffret` (`id_coffret`, `quantite`, `id_magasin`) VALUES
(1, 2, 1),
(2, 3, 1),
(3, 12, 1),
(4, 6, 1),
(5, 8, 1),
(6, 8, 1),
(7, 4, 1),
(8, 3, 1),
(9, 4, 1),
(1, 0, 2),
(2, 2, 2),
(3, 1, 2),
(4, 9, 2),
(5, 4, 2),
(6, 0, 2),
(7, 12, 2),
(8, 10, 2),
(9, 7, 2),
(1, 4, 3),
(2, 5, 3),
(3, 2, 3),
(4, 0, 3),
(5, 5, 3),
(6, 2, 3),
(7, 9, 3),
(8, 12, 3),
(9, 4, 3);