# AWS Fargate Test Application

This repository contains a test application along with the necessary steps to push a Docker image to AWS ECR (Elastic Container Registry) using a bash script.

## Getting Started

### Create AWS Elastic Container Registry (ECR) and Elastic Container Service (ECS)

[POC of AWS Fargate](https://itvplc.jira.com/wiki/spaces/AA/pages/4699455525/Build+AWS+Fargate+serverless)

### Follow the steps below to push the Docker image to AWS ECR:

1. **Log in to AWS Console:**
   Log in to the AWS Management Console and sandbox1 account
    ```bash
   aws-vault exec itvpv-sbx1

2. **Assign Permissions to Bash Script:**
   Before running the bash script, make sure it has executable permissions.
   ```bash
   chmod u+x build-n-push.sh

3. **Run bash script:**
    ```bash
   ./build-n-push.sh

*it should build and push the docker image of this test application to the registry*
