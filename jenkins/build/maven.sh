#!/bin/bash

echo "*****************************"
echo "*******Building Jar**********"
echo "*****************************"

WORKSPACE=/home/jenkins-data/jenkins_home/workspace/MyFirstPipeline
docker run --rm -v $WORKSPACE/java-app:/app -v /root/.m2:/root/.m2 -w /app maven:3.8.4-ibmjava-8-alpine "$@"
