#!/bin/bash
cd /var/www/html
curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
chmod +x wp-cli.phar
./wp-cli.phar core download --allow-root
./wp-cli.phar config create --dbname=wordpress --dbuser=wpuser --dbpass=password --dbhost=mariadb:3306 --allow-root
./wp-cli.phar core install --url=ahajji.42.fr --title=inception --admin_user=ahajji --admin_password=ahajji --admin_email=ahajji@ahajji.com --allow-root
./wp-cli.phar user create karim karim@example.com --role=subscriber --user_pass=karim --allow-root

./wp-cli.phar option update siteurl 'http://ahajji.42.fr' --allow-root
./wp-cli.phar option update home 'http://ahajji.42.fr' --allow-root
php-fpm8.2 -F
