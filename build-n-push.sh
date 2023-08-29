#!/usr/bin/env bash

aws ecr get-login-password --region eu-west-1 | docker login --username AWS --password-stdin 244107309531.dkr.ecr.eu-west-1.amazonaws.com

docker build -t marek-fargate-simple-express .

docker tag marek-fargate-simple-express:latest 244107309531.dkr.ecr.eu-west-1.amazonaws.com/marek-fargate-simple-express:latest

docker push 244107309531.dkr.ecr.eu-west-1.amazonaws.com/marek-fargate-simple-express:latest
