PS=$(shell docker ps -a -q)
IMGS=$(shell docker images -q)
MK_WP_DATA=sudo mkdir ~/Inception/srcs/requirements/wordpress/wordpress_data;
MK_DB_DATA=sudo mkdir ~/Inception/srcs/requirements/mariadb/mysql_data;

#### mkdir before compose!!!
test:
	cd ~/Inception/srcs; docker-compose up -d

del:
	docker stop $(PS); docker rm $(PS); docker rmi $(IMGS); docker volume rm srcs_mydb srcs_my_wp; docker network rm my_net;
       
del2:
	cd ~/Inception/srcs/requirements/mariadb/mysql_data/; sudo rm -rf *; cd ~/Inception/srcs/requirements/wordpress/wordpress_data/; sudo rm -rf *;

test2:
	$(MK_WP_DATA) $(MK_DB_DATA) cd ~/Inception/srcs; docker-compose up -d;
