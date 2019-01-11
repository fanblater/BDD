# Base de donnée CDA 2019

# jour 1 : commande Linux

## aller dans la maison de root

    cd /root

## editer les prefs du compte root pour le bashrc

    nano .bashrc

## je me deloggue et me reloggue 

    exit

## je vérifie la disponibilité de l'alias l

    l

## j'installe les utilitaires usuels du systeme

    apt install nmap zip dnsutils net-tools tzdata lynx ssh sudo

## je telecharge la presque dernière version de webmin

    wget http://prdownloads.sourceforge.net/webadmin/webmin_1.890_all.deb

## installation du paquet en local

    dpkg -i webmin_1.890_all.deb 

## je fini l'install via apt

    apt -f install

## installation de samba pour le partage windows

    apt install winbind samba

    cd /etc/

## je verifie et modifie au cas ou les dns
   
    nano resolv.conf

## je modifie la ligne de resolution hosts pour rajouter wins
   
    nano nsswitch.conf 
   
## je telecharge la presque dernière version de webmin
   
    wget http://prdownloads.sourceforge.net/webadmin/webmin_1.890_all.deb

## installation du paquet en local

    dpkg -i webmin_1.890_all.deb 

## je fini l'install via apt

    apt -f install

## installation de samba pour le partage windows

    apt install winbind samba

    cd /etc/

## je verifie et modifie au cas ou les dns

    nano resolv.conf
   
## je modifie la ligne de resolution hosts pour rajouter wins

    nano nsswitch.conf 

## je verifie l'heure

    date

## config du fuseau

    dpkg-reconfigure tzdata

## install d'apache 2.4

    apt install apache2

## activation du module SSL

    a2enmod ssl

    a2ensite default-ssl
   
## relancer le service ( systemctl restart apache2)

    service apache2 restart
   
## generation du certificat auto signé pour 10 ans

    openssl req $@ -new -x509 -days 3560 -nodes -out /etc/apache2/apache.pem -keyout /etc/apache2/apache.pem
   
## install d'apache 2.4
   
    apt install apache2
   
## activation du module SSL
   
    a2enmod ssl
   
    a2ensite default-ssl
   
## relancer le service ( systemctl restart apache2)
   
    service apache2 restart
   
## generation du certificat auto signé pour 10 ans
   
    openssl req $@ -new -x509 -days 3560 -nodes -out /etc/apache2/apache.pem -keyout /etc/apache2/apache.pem
   
## activation des modules populaires
   
    a2enmod rewrite
   
    a2enmod redirect
   
    a2enmod curl
   
    a2enmod headers

## écriture du nouveau certif ssl dans la conf apache
   
    cd sites-available/
   
    nano default-ssl.conf 
   
    service apache2 restart

## changement du documentroot
   
    nano apache2.conf
   
    service apache2 restart
   
    nano 000-default.conf

## installation de mysql en lieu et place de maria

## changement recursif de propriétaire et c'est apache le nouveau proprio
   
    chown -R www-data:www-data /home/user/www
   
    usermod -a -G www-data user

## installation de mysql en lieu et place de maria
   
    echo -e "deb http://repo.mysql.com/apt/debian/ stretch 
    mysql-5.7\ndeb-src http://repo.mysql.com/apt/debian/ stretch mysql-5.7" > /etc/apt/sources.list.d/mysql.list
    
    wget -O /tmp/RPM-GPG-KEY-mysql https://repo.mysql.com/RPM-GPG-KEY-mysql
    
    apt-key add /tmp/RPM-GPG-KEY-mysql
    
    apt update
    
    apt install mysql-server

## edition du fichier de configuration mysql pour binder toutes les IF
    
    /etc/mysql
    
    nmap 127.0.0.1
    
    nmap 192.168.0.0
    
    cd mysql.conf.d/
    
    nano mysqld.cnf 

## relance des services
    
    service mysql restart
    
    nmap 192.168.1.1

## relance des services
    
    service mysql restart
    
    nmap 192.168.1.14

## installation php7
    
    apt install php
    
    apt install php-curl
    
    apt install php-gd
    
    apt install php-mcrypt
    
    apt install php-zip
    
    apt install php-apcu
    
    apt install php-xml
    
    apt install php-ftp
    
    apt install php-tokeniser
    
    apt install php-exif

## break&fun time

    apt install bsdgames
    
    cd /usr/games
    
    l
    
    ./hangman

## install de PMA

    apt install phpmyadmin

## changement récursif des droits pour le dossier www pour ftp et samba
    
    chmod -R 775 /home/user/www
 
## install du service ftp 
    
    apt install vsftpd
    
    cd /etc/
    
    nano vsftpd.conf 
    
    rm vsftpd.conf
    
    nano vsftpd.conf
    
    service vsftpd restart
    
    nmap 127.0.0.1
    
    service vsftpd status

## install et config de samba
    
    apt install samba
    
    cd /etc/samba
    
    mv smb.conf smb.bak
    
    nano smb.conf
    
    smbpasswd -a user
    
    service nmbd restart
    
    service smbd restart
    
    testparm

## install PHP7.2
    
    apt-get -y install apt-transport-https lsb-release ca-certificates
    
    wget -O /etc/apt/trusted.gpg.d/php.gpg 
    https://packages.sury.org/php/apt.gpg
    sh -c 'echo "deb https://packages.sury.org/php/ $(lsb_release -sc main" > /etc/apt/sources.list.d/php.list'
    
    apt-cache policy
    
    apt update
    
    apt install php
    
    apt-cache policy php
    
    php -v
    
    apt upgrade
    
    service apache2 stop
    
    service apache2 start
    
    a2dismod php7.0
    
    a2enmod php7.2
    
    service apache2 start
    
    service apache2 stop
    
    service apache2 start

## installation de binutils pour le dev
    
    apt install composer
    
    apt install npm
    
    apt install curl
    
    apt install git
    
    git
    
    apt install nodes
    
    apt install screen

## installation nodejs
    
    cd /root
    
    wget https://nodejs.org/dist/v8.12.0/node-v8.12.0-linux-x64.tar.xz
    
    tar zxvf node-v8.12.0-linux-x64.tar.xz 
    
    curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
    
    curl -sL https://deb.nodesource.com/setup_8.x | -E bash -
    
    curl -sL https://deb.nodesource.com/setup_8.x
    
    curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
    
    apt install -y nodejs

    history >history.txt

# Jour 2 : Modelisation BDD

## Types de champs

    PK => Primary Key => Il n'y en a qu'une par table defini sur l'id
    
    NN => Not Null => Ne peux être null
    
    UQ => Unique => Créer ou supprime un clé unique 
    
    BIN => Binary => Stock une donnée avec une valeur binaire
    
    UN => Unsigned => valeur non négative (nombre négatif)
    
    ZF => Zero-Filled => ajout de 0 sur la longeur de la donnée (si 
    int(5) = 1 => 50000)
    
    AI => Auto-Increment 
    
    G => Generated column => valeur généré par un formulaire basé sur une autre column

## Foreign Key
    
    La FK sert a créer une relation entre les tables (exemple 1 to 1, 1 to < 1)
    
    Sur workbench, il faut aller dans l'onglet FK de la table qui vise la table satellite. 

    Pour le nommage => FK_tableinit_tablecible.
    
    Referenced table => table satellite
    
    Par default le detail est bon sinon cocher la bonne case.

# Projet BDD - Chocolaterie

**Pour le projet nous avons choisi de créer une base de donnée sur une chocolaterie** voir dossier projet_bdd/livrable/chocolat.mwb

## Création d'un TRIGGER pour la décrémentation du stock coffret

    UPDATE stock_coffret as c1 SET quantite = ((SELECT quantite FROM (SELECT * FROM stock_coffret) as c2 WHERE id_coffret = new.id_coffret) - new.quantite) where id_coffret = new.id_coffret and id_magasin = (select id_magasin from commande where id = new.id_commande)

## 10 Requêtes 

### Combien de fois le golden ticket à t'il été gagné et ressortir les numéros de série des tickets gagnants ?

    SELECT count(numero_de_serie ) as nombre, numero_de_serie FROM golden_ticket INNER JOIN lien_goldenticket_coffret ON  golden_ticket.id = id_goldenticket group by numero_de_serie;


### Quel est le stock de chaque magasin ?
    
    SELECT SUM(quantite), id_magasin FROM stock_chocolat GROUP BY id_magasin;


### Combien de client on acheté plus d'un coffret ?
    
    SELECT COUNT(id) AS nombre FROM commande join lien_coffret_commande ON commande.id = id_commande WHERE quantite > 1 GROUP BY id_client;

### Combien de client posséde une carte de fidélité ? Et en poucentage ?
    
    SELECT COUNT(id_client) FROM carte_de_fidelite WHERE active;
    
    SELECT COUNT(id_client)  /(SELECT COUNT(id) FROM client)* 100 FROM carte_de_fidelite WHERE active;

### Quels fournisseurs fournissent les chocolat de type fruit enrobé ?

    SELECT nom FROM fournisseur AS fo WHERE fo.id IN (SELECT DISTINCT(id_fournisseur) FROM lien_chocolat_fournisseur WHERE id_chocolat IN(SELECT c.id FROM chocolat AS c LEFT JOIN format AS f ON c.id_format = f.id WHERE f.nom = "fruit enrobé"));

### Quel ville posséde le plus de client avec une carte de fidélité active ?
    
    SELECT DISTINCT(COUNT(ville)), ville FROM adresse 
    JOIN carte_de_fidelite ON adresse.id = id_adresse 
    WHERE active
    GROUP BY ville DESC

### Quel coffret est le plus vendu ?
    
    SELECT id_coffret, COUNT(*) quantite FROM lien_coffret_commande GROUP BY id_coffret ORDER BY quantite DESC LIMIT 1;


### Quel nom de domaine est le plus populaire dans les adresse mail des cartes de fidélité ?
    
    SELECT DISTINCT(substring_index(email, '@' , -1))AS fai , COUNT(substring_index(email, '@' , -1)) AS quantite FROM carte_de_fidelite GROUP BY fai ORDER BY quantite DESC LIMIT 1;

### quels sont les 2 coffrets les moins vendu ?
    
    SELECT id_coffret, SUM(quantite) AS total FROM lien_coffret_commande WHERE id_coffret IN (SELECT DISTINCT(id_coffret)FROM lien_coffret_commande) GROUP BY id_coffret ORDER BY total ASC LIMIT 2;

### quel est le chocolat le plus cher du prix au grammes ?
    
    SELECT nom FROM chocolat WHERE (prix/poids) = (SELECT MAX(prix/poids) FROM chocolat);





