PS=$(shell docker ps -a -q)
IMGS=$(shell docker images -q)
MK_DIR=sudo mkdir /home/nhwang/data;
MK_WP_DATA=sudo mkdir /home/nhwang/data/wordpress_data;
MK_DB_DATA=sudo mkdir /home/nhwang/data/mysql_data;

del:
	docker stop $(PS); docker rm $(PS); docker rmi $(IMGS); docker volume rm srcs_mydb srcs_my_wp; docker network rm my_net; cd /home/nhwang/data/; sudo rm -rf mysql_data; cd /home/nhwang/data; sudo rm -rf wordpress_data;

up:
	$(MK_DIR) $(MK_WP_DATA) $(MK_DB_DATA) cd /home/nhwang/Inception/srcs; docker-compose up -d;

down:
	cd /home/nhwang/Inception/srcs; docker-compose down;
