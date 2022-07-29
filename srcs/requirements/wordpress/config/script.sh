FILE=/var/www/html/.exist

if  [ ! -f "$FILE" ]; then
	echo "Create config"
	rm -rf /var/www/html/wp-config.php
	wp config create --dbname=$DB_NAME --dbuser="wordpress" --dbpass=$WP_PASSWORD --dbhost="mariadb" --path="/var/www/html/" --allow-root --skip-check
	wp core install --url="localhost" --title="viporten site" --admin_user="viporten" --admin_password="viporten_42" --admin_email="viporten@student.42.fr" --path="/var/www/html/" --allow-root
	wp user create ajeanne bob@student.42.fr --role=author --user_pass="t" --allow-root
	touch /var/www/html/.exist
fi
echo "Config already done"
exec php-fpm7.3 --nodaemonize
