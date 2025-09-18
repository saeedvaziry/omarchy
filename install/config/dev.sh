echo "Install MariaDB"
sudo pacman -S mariadb --noconfirm
sudo mariadb-install-db --user=mysql --basedir=/usr --datadir=/var/lib/mysql
sudo systemctl enable --now mariadb

echo "Setup Valkey"
sudo pacman -S valkey --noconfirm
sudo systemctl enable --now valkey

echo "Setup PHP"
omarchy-install-dev-env php
sudo pacman -S php-gd php-redis php-igbinary --noconfirm
sudo sed -i 's/;extension=gd/extension=gd/' /etc/php/php.ini
sudo sed -i 's/;extension=sqlite3/extension=sqlite3/' /etc/php/php.ini
sudo sed -i 's/;extension=ftp/extension=ftp/' /etc/php/php.ini
sudo sed -i 's/;extension=redis/extension=redis/' /etc/php/conf.d/redis.ini
sudo sed -i 's/;extension=igbinary/extension=igbinary/' /etc/php/conf.d/igbinary.ini

echo "Install LazySQL"
yay -S --noconfirm --nodiffmenu --noeditmenu --answerdiff=None --answerclean=All lazysql
