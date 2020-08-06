#!/usr/bin/env bash

mvn clean package

cd target

tar -xvf cgriser-db*.tar.gz

java -jar ./dependency/liquibase-core.jar --driver=org.postgresql.Driver --classpath=./dependency/postgresql.jar \
  --changeLogFile=./master.changelog.xml --url=jdbc:postgresql://localhost:5432/cgriser_db --username=cgriser \
  --password=DreamB1gger! --contexts=local --logLevel=info update