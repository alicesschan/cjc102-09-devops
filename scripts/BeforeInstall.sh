#!/bin/bash

aws ecr get-login-password --region ap-northeast-1 | docker login --username AWS --password-stdin 179757322461.dkr.ecr.ap-northeast-1.amazonaws.com

if [ `docker images | grep 179757322461.dkr.ecr.ap-northeast-1.amazonaws.com/cjc102-09-ecr-repo | wc -l`  = 1 ]
then
        docker rmi 179757322461.dkr.ecr.ap-northeast-1.amazonaws.com/cjc102-09-ecr-repo
        docker pull 179757322461.dkr.ecr.ap-northeast-1.amazonaws.com/cjc102-09-ecr-repo:latest
else
        docker pull 179757322461.dkr.ecr.ap-northeast-1.amazonaws.com/cjc102-09-ecr-repo:latest
fi
