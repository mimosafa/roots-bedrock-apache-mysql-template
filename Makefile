include .env.local

CMD = docker compose --env-file .env.local

up:
	$(CMD) up -d
stop:
	$(CMD) stop
down:
	$(CMD) down
destroy:
	$(CMD) down --rmi all --volumes --remove-orphans

open:
	open ${WP_HOME}
