#!/bin/bash
docker run -p 80:5000 --name flask-web -d 179757322461.dkr.ecr.ap-northeast-1.amazonaws.com/cjc102-09-ecr-repo:latest

sleep 20s
