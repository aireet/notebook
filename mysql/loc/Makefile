
DBPATH=/Users/mac/Documents/workSpace/docker_data_v/mysql/data
PASSWORD=123

.PHONY:initdb
initdb:
	docker run \
		-p 3306:3306 \
		--name mysql \
		-e MYSQL_ROOT_PASSWORD=${PASSWORD} \
		-v ${DBPATH}:/bitnami/mysql/data \
	bitnami/mysql:5.7.40	



xormWithLoc:

xormWithOutLoc:


gormWithLoc:

gormWithOutLoc:


bunWithLoc:


bunWithoutLoc:
