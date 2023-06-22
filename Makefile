#This makefile about inception project.
CONTAINERS	= $(shell docker ps -qa)
IMAGES		= $(shell docker images -qa)
VOLUMES		= $(shell docker volume ls -q)
NETWORKS	= $(shell docker network ls -q)

#This rule is set new hostname for localhost ip
hostname		:
				@ echo "127.0.0.1 btekinli.42.fr" >> /etc/hosts

#This rule if does not exist create volume folders
volume_dir		:
				@ mkdir -p /home/btekinli/data/wordpress
				@ mkdir -p /home/btekinli/data/mariadb

# -f, --file FILE Specify an alternate compose file (default values is docker-compose.yml)
up				: volume_dir
				@ docker compose -f srcs/docker-compose.yml up --build

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
