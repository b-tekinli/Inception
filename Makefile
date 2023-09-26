all: data db wp up

up:
	docker-compose -f ./srcs/docker-compose.yml up -d
data:
	mkdir /home/btekinli/data
db:
	mkdir /home/btekinli/data/db
wp:
	mkdir /home/btekinli/data/wp

down:
	docker-compose -f ./srcs/docker-compose.yml down

.PHONY: up data db wp down
