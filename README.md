# BOSTON PRICING APPLICATION 

## CircleCI status

[![CircleCI](https://circleci.com/gh/sherifhmdy/BostonHousesPricing/tree/master.svg?style=svg)](https://circleci.com/gh/sherifhmdy/BostonHousesPricing/tree/master)


## Summary

    this application is using a pre-trained model to predict houses pricing in Boston
    and project contains scripts and files to lint/containerize/upload application on dockerhub.io

## Instructions

    - first of all run make setup to create python environment .devops
    - activate the created env using source .devops/bin/activate command
    - run make install command to install dependencies
    - run make lint command to make sure Dockerfile and app.py are valid
    - linting step has been automated using cirecleci CI pipeline
    - now you can test the application locally using python3 app.py command
    - while testing the application you can call script ./make_prediction.sh to test the application and check if
        it's running smoothly or not
    - if all prev. steps passed successfully then you need to containerize and upload docker file on hub
        - run script ./run_docker.sh to build docker image and create a container from the created image
        - run script ./upload_docker.sh to upload the created image to the hub so you can re-use it anywhere
    - after creating your kubernetes cluster locally using minikube or on cloud using services like EKS follow the below
    - run script ./run_kubernetes.sh to create a pod for the application and expose the pod to be called normally
    
## Files Description

    - output_txt_files contains required output files and I've added another file kubernetes_LOGS which
        is simply taken from pod's logs
    - Dockerfile is file has the application's docker image data and configurations
    - app.py is the main application file
    - Makefile is a make file for automating environment setup, dependencies installatin, and code linting & testing
    - requirements.txt is file contains the python app's dependencies
    - resize.sh is a shell used for cloud9 environment expansion
    - run_docker is a shell script used to create docker image for the application
    - run_kubernetes is a shell script used to create pod for the application hosted on kubernetes environment
    - upload_docker is a shell script used to upload docker image to the docker hub 
    - .devops is the python environment created for the project
    - .circleci is the configuration for the pipeline create using circleci application
