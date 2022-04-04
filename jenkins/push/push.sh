#!/bin/bash

echo "*****************************"
echo "*******Pushing Image*********"
echo "*****************************"

docker login -u ajinkya7208545142 -p $PASS
docker tag my-app-prod:$BUILD_TAG ajinkya7208545142/my-app-prod:$BUILD_TAG
docker push ajinkya7208545142/my-app-prod:$BUILD_TAG 
