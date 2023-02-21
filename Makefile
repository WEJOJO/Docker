PS=$(shell docker ps -a -q)
IMGS=$(shell docker images -q)
MK_WP_DATA=sudo mkdir ~/Inception/srcs/requirements/wordpress/wordpress_data;
MK_DB_DATA=sudo mkdir ~/Inception/srcs/requirements/mariadb/mysql_data;

del:
	docker stop $(PS); docker rm $(PS); docker rmi $(IMGS); docker volume rm srcs_mydb srcs_my_wp; docker network rm my_net; cd ~/Inception/srcs/requirements/mariadb/; sudo rm -rf mysql_data; cd ~/Inception/srcs/requirements/wordpress/; sudo rm -rf wordpress_data;

up:
	$(MK_WP_DATA) $(MK_DB_DATA) cd ~/Inception/srcs; docker-compose up -d;

down:
	cd ~/Inception/srcs; docker-compose down;
