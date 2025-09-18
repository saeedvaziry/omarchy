echo "Setup Valkey"
sudo pacman -S valkey
sudo systemctl enable --now valkey

echo "Setup PHP"
omarchy-install-dev-env php
sudo pacman -S php-gd php-redis php-igbinary
sudo sed -i 's/;extension=gd/extension=gd/' /etc/php/php.ini
sudo sed -i 's/;extension=sqlite3/extension=sqlite3/' /etc/php/php.ini
sudo sed -i 's/;extension=ftp/extension=ftp/' /etc/php/php.ini
sudo sed -i 's/;extension=redis/extension=redis/' /etc/php/conf.d/redis.ini
sudo sed -i 's/;extension=igbinary/extension=igbinary/' /etc/php/conf.d/igbinary.ini
