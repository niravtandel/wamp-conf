# windos update manager file ==> wuaueng.dll
# ==> brainfuck
# ==> webkey.ccc

# sony pcg f104k

# H9JT033N6R3

# verification disque ubuntu
fsck /dev/sdb8

```
GNOME Terminal

Tilda - Simple, GTK+ pop-up terminal - https://github.com/lanoxx/tilda

Guake - GTK+ popup terminal. Great multi-monitor support. - https://github.com/Guake/guake
sudo apt-get install guake

Terminology - Feature rich terminal using the EFL toolkit. https://www.enlightenment.org/about-terminology
	
"There is one more terminal application you can install & the includes with many features . It's named as terminator."
you can install it with
sudo apt-get install terminator
in your terminal with CTRL+ALT+T
```

# install alsa utility

# The default user on Raspbian is pi with the password raspberry.
# 192.168.1.10
# 192.168.1.4 edurobot
# 192.168.5.4 edurobot

# Logging out other users from the command line
# this is one answer
who -u
# or
who -a
# that give you the PID
# Then you can kill the user session.
sudo kill <pid>
# or
sudo pkill -KILL -u <username>

#
su
sudo su
sudo -s

#
sudo apt-get update

#
sudo apt-get install openssh-server openssh-client

#
sudo apt-get install language-pack-fr language-pack-fr-base manpages-fr
sudo nano /etc/default/locale
# write the code
```
# LANG="en_US.UTF-8"
# LANG="en_GB.UTF-8"
LANG="fr_FR.UTF-8"
LANGUAGE="fr_FR:fr"
```

# create user labs
sudo addgroup labs
sudo passwd labs
sudo useradd labs -g labs --shell /bin/bash --home /var/www/labs --create-home
sudo usermod labs --shell /bin/bash --home /var/www/labs
sudo ln -s /var/www/labs /var/www/html/labs
sudo usermod -aG www-data labs
sudo usermod -aG root labs
sudo usermod -aG phlyper labs
sudo chmod -R 755 /var/www/labs # probleme with upload files
sudo chown -R labs:labs /var/www/labs # probleme with upload files
sudo chmod -R 775 /var/www/labs # correct
sudo chown -R labs:www-data /var/www/labs # correct
sudo chmod -R 777 /var/www/labs/ebookist/logs
sudo chmod -R 777 /var/www/labs/ebookist/tmp
# il se peut ca va pas marcher correctement lors de la connexion de l'utilisateur via ftp
sudo usermod -s /sbin/nologin labs
# or
sudo usermod -s /usr/sbin/nologin labs
sudo apt-get install proftpd
# decommenté ces deux lignes dans /etc/proftpd/proftpd.conf
DefaultRoot			~
RequireValidShell		off
sudo service proftpd restart
# bloquer l'access ssh pour le user labs
sudo nano /etc/ssh/sshd_config
# ajouter ces deux lignes apres
UsePrivilegeSeparation yes

DenyGroups labs
DenyUsers labs
sudo service ssh restart
# or
sudo systemctl restart ssh


# create new user width no home folder
sudo addgroup phlyper
sudo useradd phlyper -g phlyper --shell /bin/bash --home /home/phlyper --create-home # force create home folder
sudo passwd phlyper
sudo mkdir /home/phlyper
sudo chown -R phlyper:phlyper /home/phlyper
sudo chmod 0755 /home/phlyper
sudo usermod phlyper --shell /bin/bash --home /home/phlyper
# cp /etc/skel/* /home/phlyper
sudo getent passwd phlyper
sudo getent group phlyper

sudo addgroup odoo
sudo useradd odoo -g odoo --shell /bin/bash --home /opt/odoo --create-home
sudo chmod 0755 /opt/odoo
sudo chown -R odoo:odoo /opt/odoo

sudo ln -f -s /var/www/html /root/www
sudo ln -f -s /var/www/html /home/phlyper/www

# definir le mask du l'utilisateur
umask 0022 # valeur par defaut

#
sudo apt-get install sudo # for debian install sudo
sudo usermod -aG www-data phlyper # for apache (ubuntu & debian)
sudo usermod -aG sudo phlyper # for debian use sudo
sudo usermod -aG root phlyper # for root user (optional)
sudo cat /etc/passwd | grep phlyper
sudo cat /etc/group | grep phlyper

#
sudo ln -s /var/www /home/phlyper/www
sudo ln -s /var/www /root/www

#
sudo chmod -R 775 /var/www/html
sudo chmod -R 777 /var/www/html
sudo chown -R www-data:www-data /var/www/html
sudo chown -R phlyper:phlyper /var/www/html

#
sudo whereis apache2
sudo pidof apache2
sudo dpkg --list | grep -i package name

#
sudo apt-get install apache2 apache2-doc
sudo apt-get install mysql-server mysql-client
sudo apt-get install php5 php5-curl php5-mcrypt php5-intl php5-xdebug php5-sqlite
sudo apt-get install php7.0 php7.0-curl php7.0-mcrypt php7.0-intl php-xdebug php7.0-mbstring  libapache2-mod-php7.0 php7.0-simplexml php7.0-soap php-gettext php-zip php7.0-zip php7.0-gd php7.0-xmlrpc php-imagick php7.0-mysql php7.0-sqlite
sudo apt-get install phpmyadmin adminer
sudo apt-get install php7.0-fpm
sudo apt-get install php5-fpm

#
sudo a2enmod rewrite
sudo php5enmod mcrypt
sudo php5enmod xdebug
sudo phpenmod mcrypt
sudo phpenmod xdebug
sudo service apache2 restart
sudo ln -s /usr/share/phpmyadmin /var/www/html/phpmyadmin
sudo ln -s /usr/share/adminer /var/www/html/adminer
sudo ln -s /usr/share/adminer/adminer /var/www/html/adminer
sudo ln -f -s /var/www/pma /var/www/html/pma

#
sudo apt-get install proftpd
sudo apt-get install openjdk-7-jre openjdk-7-jdk
# Edit /etc/apt/sources.list and add these lines (you may ignore line with #)
# deb http://ftp.de.debian.org/debian jessie-backports main
sudo add-apt-repository ppa:openjdk-r/ppa
sudo apt-get install openjdk-8-jre openjdk-8-jdk
sudo apt-get install htop

# Gérer les .zip en ligne de commande
sudo apt-get install zip unzip rar unrar
# Création
sudo zip votre_archive.zip [liste des fichiers]
sudo zip -r votre_archive.zip [dossier]
sudo zip -r votre_archive.zip *
# Extraction
sudo unzip votre_archive.zip -d mon_repertoire

#
sudo apt-get install gnome-tweak-tool
# rdp ubuntu on windows
sudo apt-get install xrdp gnome-session-flashback
sudo service xrdp restart
sudo /etc/init.d/xrdp restart

# Avoir un shell en couleur sous Root
sudo nano /root/.bashrc
sudo nano ~/.bashrc
# decommanter les lignes
export LS_OPTIONS='--color=auto'
eval "`dircolors`"
alias ls='ls $LS_OPTIONS'
alias ll='ls $LS_OPTIONS -l'
alias l='ls $LS_OPTIONS -lA'
alias lh='ls $LS_OPTIONS -alh'
# recharger le bash root
. ~/.bashrc


# remount partition in read-only mode
mount -o remount,ro /
# remount partition in write mode
mount -o remount,rw /

# ezservermonitor
sudo wget https://raw.githubusercontent.com/shevabam/ezservermonitor-sh/master/eZServerMonitor.sh
sudo chmod u+x ./eZServerMonitor.sh
sudo ./eZServerMonitor.sh -a
# espace libre du disque
sudo fdisk -l
sudo df -h


# Test disque dur
# Passage du disque en SMART
smartctl -s on /dev/sda
smartctl -P show /dev/sda
# Avoir des informations sur vos disques
smartctl -i /dev/sda
# Test de la vitesse d’écriture
time dd if=/dev/zero of=ddfile bs=8k count=125000 && sync
# Test de la vitesse de lecture
time dd if=ddfile of=/dev/null bs=8k
# Avoir la température de vos disques
hddtemp /dev/sda

# grub customizer -- grub order boot
sudo add-apt-repository ppa:danielrichter2007/grub-customizer && sudo apt-get update && sudo apt-get install grub-customizer

# webalizer https://doc.ubuntu-fr.org/webalizer
mkdir ~/webalizer
wget ftp://ftp.mrunix.net/pub/webalizer/webalizer-2.21-02-src.tgz
tar -zxvf webalizer-2.21-02-src.tgz
cd webalizer-2.21-02
sudo apt-get install zlib1g-dev libpng12-dev libgd2-noxpm-dev
./configure --with-language=french
make
sudo make install
cd /usr/local/etc/
sudo cp webalizer.conf.sample webalizer.conf
sudo nano webalizer.conf
sudo webalizer

# Hardinfo : afficher les informations système sous Linux
sudo apt-get install hardinfo

# screenFetch - The Bash Screenshot Information Tool
# https://github.com/KittyKatt/screenFetch
# sudo add-apt-repository ppa:djcj/screenfetch
sudo deb http://ppa.launchpad.net/djcj/screenfetch/ubuntu YOUR_UBUNTU_VERSION_HERE main 
sudo deb-src http://ppa.launchpad.net/djcj/screenfetch/ubuntu YOUR_UBUNTU_VERSION_HERE main 
sudo apt-get install screenfetch
sudo screenfetch

# http://www.lfd.uci.edu/~gohlke/pythonlibs/#mysql-python
sudo apt-get install python-dev libmysqlclient-dev
sudo pip install MySQL-python
sudo apt-get install python-setuptools python3-setuptools python-pip python3-pip
sudo pip install virtualenv graphviz
sudo pip install --upgrade pip
sudo pip install --upgrade virtualenv

# themes ubuntu
# http://www.noobslab.com/2015/11/stylishdark-theme-with-3-variants.html
sudo add-apt-repository ppa:noobslab/themes
sudo apt-get update
sudo apt-get install stylishdark-theme
# http://www.noobslab.com/2012/07/install-malys-inversio-themes-on.html
sudo add-apt-repository ppa:noobslab/malys-themes
sudo apt-get update
sudo apt-get install malys-inversio
# http://www.noobslab.com/2016/01/yosembiance-smooth-and-sleek-theme.html
sudo add-apt-repository ppa:noobslab/themes
sudo apt-get update
sudo apt-get install yosembiance-gtk-theme
# icons ubuntu
# http://www.ubuntumaniac.com/2016/04/install-numix-circle-icon-theme-on.html
sudo apt-add-repository ppa:numix/ppa
sudo apt-get update
sudo apt-get install numix-icon-theme-circle
# http://www.ubuntumaniac.com/2016/05/paper-icons-13-theme-is-available-ppa.html
sudo add-apt-repository ppa:snwh/pulp
sudo apt-get update
sudo apt-get install paper-icon-theme paper-gtk-theme

# http://www.lemondedestuts.org/linux/windows-10-theme-un-theme-sympa-pour-ubuntu
# http://b00merang.weebly.com/redmond-collection.html
sudo apt-get install lxde gtk2-engines-murrine

# docky ==> https://doc.ubuntu-fr.org/docky
https://launchpad.net/~docky-core/+archive/ppa
sudo apt-get install docky

# concky ==> https://doc.ubuntu-fr.org/conky
sudo add-apt-repository ppa:vincent-c/conky
sudo apt-get install conky-all conky-manager

# arc theme
# https://github.com/horst3180/arc-theme

# List All Postgres related packages
dpkg -l | grep postgres

# Remove all above listed
sudo apt-get --purge remove postgresql

# Remove the following folders
sudo rm -rf /var/lib/postgresql/
sudo rm -rf /var/log/postgresql/
sudo rm -rf /etc/postgresql/

# repair pdkg or apt
# the following command worked.

sudo rm -rf /var/lib/dpkg/updates/*
sudo rm -rf /var/lib/apt/lists/*
sudo rm /var/cache/apt/*.bin
sudo apt-get autoclean
sudo apt-get clean
sudo apt-get autoremove
sudo apt-get update
sudo dpkg --configure -a
sudo apt-get install -f

# if still getting same error then try

sudo dpkg --remove --force-remove-reinstreq package_name 

# after removing package update your system and restart once.


# create a daemon service on debian or ubuntu
# Friend , make sure that you follow the following steps while adding/creating new service in ubuntu.
# 
# 1. Create the service file in /etc/init.d/<service name>
# 2.
systemctl daemon-reload
# 3.
chmod 700 /etc/init.d/<service name>
# 4.
update-rc.d <service name> defaults
# 5.
update-rc.d <service name> enable
# or 
# 3.
sudo systemctl enable <service name>
# 4.
sudo systemctl start <service name>

# 
# now see you service in
service --status-all

