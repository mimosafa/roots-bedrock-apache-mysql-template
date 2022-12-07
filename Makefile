include .env.local

CMD = docker compose --env-file .env.local
APACHE_EXEC = $(CMD) exec php-apache

up:
	$(CMD) up -d
stop:
	$(CMD) stop
down:
	$(CMD) down
destroy:
	$(CMD) down --rmi all --volumes --remove-orphans

wp.install:
	$(APACHE_EXEC) bash /tmp/wp-install.sh

open:
	open ${WP_HOME}
dashboard:
	open ${WP_SITEURL}/wp-admin
