hello:
	echo "hello"
build:
	docker-compose build
up:
	docker-compose up -d digdag
exec-bash:
	docker-compose exec digdag bash
down:
	docker-compose down
chown:
	sudo chown -R ${USER}:staff .

# container内で
digdag-1:
	digdag run --rerun digdag-01.dig --project ./digdag-01 -p ENV=${ENV} -p SLACK_INCOMING_WEBHOOK_URL=${SLACK_INCOMING_WEBHOOK_URL}
