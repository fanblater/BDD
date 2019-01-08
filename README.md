# BDD
Base de donnée CDA 2019

# jour 1 : commande Linux
<<<<<<< HEAD
## aller dans la maison de root
=======
# aller dans la maison de root
>>>>>>> 6ec4205d583ea55762b2a76bdc87d952ebb3033e
    cd /root
    # editer les prefs du compte root pour le bashrc
    nano .bashrc
    # je me deloggue et me reloggue 
    exit
    #
    cd /root
    # je vérifie la disponibilité de l'alias l
    l
    # j'installe les utilitaires usuels du systeme
       apt install nmap zip dnsutils net-tools tzdata lynx ssh sudo

<<<<<<< HEAD
   ## je telecharge la presque dernière version de webmin
   wget http://prdownloads.sourceforge.net/webadmin/webmin_1.890_all.deb
   ## installation du paquet en local
   dpkg -i webmin_1.890_all.deb 
   ## je fini l'install via apt
   apt -f install
   ## installation de samba pour le partage windows
   apt install winbind samba

   cd /etc/
   ##je. verifie et modifie au cas ou les dns
   nano resolv.conf
   ##je modifie la ligne de resolution hosts pour rajouter wins
   nano nsswitch.conf 
   ##je verifie l'heure
=======
   # je telecharge la presque dernière version de webmin
   wget http://prdownloads.sourceforge.net/webadmin/webmin_1.890_all.deb
   # installation du paquet en local
   dpkg -i webmin_1.890_all.deb 
   # je fini l'install via apt
   apt -f install
   # installation de samba pour le partage windows
   apt install winbind samba

   cd /etc/
   #je. verifie et modifie au cas ou les dns
   nano resolv.conf
   #je modifie la ligne de resolution hosts pour rajouter wins
   nano nsswitch.conf 
   #je verifie l'heure
>>>>>>> 6ec4205d583ea55762b2a76bdc87d952ebb3033e
   date
   #config du fuseau
   dpkg-reconfigure tzdata

<<<<<<< HEAD
   ##install d'apache 2.4
   apt install apache2
   ##activation du module SSL
   a2enmod ssl
   a2ensite default-ssl
   ##relancer le service ( systemctl restart apache2)
   service apache2 restart
   ##generation du certificat auto signé pour 10 ans
   openssl req $@ -new -x509 -days 3560 -nodes -out /etc/apache2/apache.pem -keyout /etc/apache2/apache.pem
   ##activation des modules populaires
=======
   #install d'apache 2.4
   apt install apache2
   #activation du module SSL
   a2enmod ssl
   a2ensite default-ssl
   #relancer le service ( systemctl restart apache2)
   service apache2 restart
   #generation du certificat auto signé pour 10 ans
   openssl req $@ -new -x509 -days 3560 -nodes -out /etc/apache2/apache.pem -keyout /etc/apache2/apache.pem
   #activation des modules populaires
>>>>>>> 6ec4205d583ea55762b2a76bdc87d952ebb3033e
   a2enmod rewrite
   a2enmod redirect
   a2enmod curl
   a2enmod headers
<<<<<<< HEAD
   ## écriture du nouveau certif ssl dans la conf apache
=======
   # écriture du nouveau certif ssl dans la conf apache
>>>>>>> 6ec4205d583ea55762b2a76bdc87d952ebb3033e
   cd sites-available/
   nano default-ssl.conf 
   service apache2 restart

<<<<<<< HEAD
   ##changement du documentroot
=======
   #changement du documentroot
>>>>>>> 6ec4205d583ea55762b2a76bdc87d952ebb3033e
   nano apache2.conf
   service apache2 restart
   nano 000-default.conf

<<<<<<< HEAD
   ## changement recursif de propriétaire et c'est apache le nouveau proprio
   chown -R www-data:www-data /home/user/www
   usermod -a -G www-data user

   ##installation de mysql en lieu et place de maria
=======
   # changement recursif de propriétaire et c'est apache le nouveau proprio
   chown -R www-data:www-data /home/user/www
   usermod -a -G www-data user

   #installation de mysql en lieu et place de maria
>>>>>>> 6ec4205d583ea55762b2a76bdc87d952ebb3033e
   echo -e "deb http://repo.mysql.com/apt/debian/ stretch mysql-5.7\ndeb-src http://repo.mysql.com/apt/debian/ stretch mysql-5.7" > /etc/apt/sources.list.d/mysql.list
   wget -O /tmp/RPM-GPG-KEY-mysql https://repo.mysql.com/RPM-GPG-KEY-mysql
   apt-key add /tmp/RPM-GPG-KEY-mysql
   apt update
   apt install mysql-server

<<<<<<< HEAD
   ##edition du fichier de configuration mysql pour binder toutes les IF
=======
   #edition du fichier de configuration mysql pour binder toutes les IF
>>>>>>> 6ec4205d583ea55762b2a76bdc87d952ebb3033e
   /etc/mysql
   nmap 127.0.0.1
   nmap 192.168.30.120
   cd mysql.conf.d/
   nano mysqld.cnf 
<<<<<<< HEAD
   ## relance des services
   service mysql restart
   nmap 192.168.1.1

   ##installation php7
=======
   # relance des services
   service mysql restart
   nmap 192.168.1.14

   #installation php7
>>>>>>> 6ec4205d583ea55762b2a76bdc87d952ebb3033e
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
   
<<<<<<< HEAD
   ##break&fun time
=======
   #break&fun time
>>>>>>> 6ec4205d583ea55762b2a76bdc87d952ebb3033e
   apt install bsdgames
   cd /usr/games
   l
   ./hangman

  
<<<<<<< HEAD
  ##install de PMA
  apt install phpmyadmin
  ## changement récursif des droits pour le dossier www pour ftp et samba
  chmod -R 775 /home/user/www
 
 ##install du service ftp 
=======
  #install de PMA
  apt install phpmyadmin
  # changement récursif des droits pour le dossier www pour ftp et samba
  chmod -R 775 /home/user/www
 
 #install du service ftp 
>>>>>>> 6ec4205d583ea55762b2a76bdc87d952ebb3033e
   apt install vsftpd
   cd /etc/
   nano vsftpd.conf 
   rm vsftpd.conf
   nano vsftpd.conf
   service vsftpd restart
   nmap 127.0.0.1
   service vsftpd status
  
<<<<<<< HEAD
   ##install et config de samba
=======
   #install et config de samba
>>>>>>> 6ec4205d583ea55762b2a76bdc87d952ebb3033e
   apt install samba
   cd /etc/samba
   mv smb.conf smb.bak
   nano smb.conf
   smbpasswd -a user
   service nmbd restart
   service smbd restart
   testparm

<<<<<<< HEAD
   ##install PHP7.2
=======
   #install PHP7.2
>>>>>>> 6ec4205d583ea55762b2a76bdc87d952ebb3033e

  apt-get -y install apt-transport-https lsb-release ca-certificates
  wget -O /etc/apt/trusted.gpg.d/php.gpg https://packages.sury.org/php/apt.gpg
  sh -c 'echo "deb https://packages.sury.org/php/ $(lsb_release -sc) main" > /etc/apt/sources.list.d/php.list'
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

<<<<<<< HEAD
  ##installation de binutils pour le dev
=======
  #installation de binutils pour le dev
>>>>>>> 6ec4205d583ea55762b2a76bdc87d952ebb3033e
  apt install composer
  apt install npm
  apt install curl
  apt install git
  git
  apt install nodes
  apt install screen

<<<<<<< HEAD
  ##installation nodejs
=======
  #installation nodejs
>>>>>>> 6ec4205d583ea55762b2a76bdc87d952ebb3033e
  cd /root
  wget https://nodejs.org/dist/v8.12.0/node-v8.12.0-linux-x64.tar.xz
  tar zxvf node-v8.12.0-linux-x64.tar.xz 
  curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
  curl -sL https://deb.nodesource.com/setup_8.x | -E bash -
  curl -sL https://deb.nodesource.com/setup_8.x
  curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
  apt install -y nodejs

  history >history.txt

<<<<<<< HEAD
# Jour 2 : Modelisation BDD

## Types de champs

PK => Primary Key => Il n'y en a qu'une par table defini sur l'id
NN => Not Null => Ne peux être null
UQ => Unique => Créer ou supprime un clé unique 
BIN => Binary => Stock une donnée avec une valeur binaire
UN => Unsigned => valeur non négative (nombre négatif)
ZF => Zero-Filled => ajout de 0 sur la longeur de la donnée (si int(5) = 1 => 50000)
AI => Auto-Increment 
G => Generated column => valeur généré par un formulaire basé sur une autre column

## Foreign Key
La FK sert a créer une relation entre les tables (exemple 1 to 1, 1 to < 1)
Sur workbench, il faut aller dans l'onglet FK de la table qui vise la table satellite. 

Pour le nommage => FK_tableinit_tablecible.
Referenced table => table satellite
Par default le detail est bon sinon cocher la bonne case.




=======
>>>>>>> 6ec4205d583ea55762b2a76bdc87d952ebb3033e
