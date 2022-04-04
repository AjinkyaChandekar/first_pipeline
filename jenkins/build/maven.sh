#!/bin/bash

echo "*****************************"
echo "*******Building Jar**********"
echo "*****************************"

docker run --rm -v /home/jenkins-data/pipeline/java-app:/app -v /root/.m2:/root/.m2 -w /app maven:3.8.4-ibmjava-8-alpine "$@"

