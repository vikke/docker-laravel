build:
	docker build -t my_ubuntu ubuntu
down:
	docker-compose down
kill_container:
	docker ps | awk '{print $1}'| xargs docker kill
up: down
	docker-compose up -d
clean_image:
	docker rmi my_ubuntu
clean_container:
	docker ps -a | awk '{print $1}' | xargs docker rm
clean_all: kill_container clean_container clean_image
login:
	docker-compose exec ubuntu bash
