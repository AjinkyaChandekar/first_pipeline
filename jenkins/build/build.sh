#!/bin/bash

WORKSPACE=/home/jenkins-data/jenkins_home/workspace/MyFirstPipeline

cp $WORKSPACE/java-app/target/*.jar $WORKSPACE/jenkins/build

echo "**************************"
echo "***Building Docker Image***"
echo "**************************"

cd $WORKSPACE/jenkins/build && docker-compose -f docker-compose-build.yml build
