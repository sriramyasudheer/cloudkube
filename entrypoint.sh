#modify wp-config.php file with env variables

mv /var/www/html/wp-config-sample.php /var/www/html/wp-config.php
sed -i "s/database_name_here/$WP_DB/g" /var/www/html/wp-config.php
sed -i "s/username_here/$WP_DBUSER/g" /var/www/html/wp-config.php
sed -i "s/password_here/$WP_DBPASSWORD/g" /var/www/html/wp-config.php
sed -i "s/localhost/$WP_DBHOST/g" /var/www/html/wp-config.php

#apache start with non stopping command
apachectl -D FOREGROUND


