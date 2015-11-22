#!/bin/bash

mkdir .mvn
mv extensions.xml .mvn/extensions.xml
sed -i "s,S3_UN,$S3_USERNAME,g" settings.xml
sed -i "s,S3_PW,$S3_PASSWORD,g" settings.xml
sed -i "s,S3_URL,$S3_URL,g" settings.xml

mvn -s settings.xml -DoutputDirectory=. -Dartifact=$ARTIFACT dependency:copy

java -jar `ls | grep .jar`
