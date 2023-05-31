#This makefile about inception project.
CONTAINERS	= $(shell docker ps -qa)
IMAGES		= $(shell docker images -qa)
VOLUMES		= $(shell docker volume ls -q)
NETWORKS	= $(shell docker network ls -q)

all: up

volume_dir		:
				@ mkdir -p /home/btekinli/data/wordpress
				@ mkdir -p /home/btekinli/data/mariadb

up				: volume_dir
				@ docker compose -f srcs/docker-compose.yml up --build -d

down			:
				@ docker compose -f srcs/docker-compose.yml down

rm_containers	: down
				@ docker rm -f $(CONTAINERS); true;

rm_images		:
				@ docker rmi -f $(IMAGES); true;

rm_volumes		:
				@ docker volume rm $(VOLUMES); true;

rm_networks		:
				@ docker network rm $(NETWORKS) 2> /dev/null; true;

rm_volume_dir	:
				@ rm -rf /home/btekinli/data

clean			: rm_containers rm_images rm_networks rm_volumes rm_volume_dir

prune:
	@ docker system prune -f

.PHONY : all up down rm_containers rm_images rm_networks rm_volumes rm_volume_dir clean prune
