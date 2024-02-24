prepare: 
	sudo chmod +x ./before-scripts.sh && ./before-scripts.sh

up:
	docker-compose -f ./cp_kafka.yml -f ./cp_postgres.yml -f ./cp_es_kibana.yml up -d
stop:
	docker-compose -f ./cp_kafka.yml stop
	docker-compose -f ./cp_postgres.yml stop
	docker-compose -f ./cp_es_kibana.yml stop
down:
	docker-compose -f ./cp_kafka.yml down
	docker-compose -f ./cp_postgres.yml down
	docker-compose -f ./cp_es_kibana.yml down
