# BOSTON PRICING APPLICATION 

[![CircleCI](https://circleci.com/gh/sherifhmdy/BostonHousesPricing/tree/master.svg?style=svg)](https://circleci.com/gh/sherifhmdy/BostonHousesPricing/tree/master)


## BostonHousePricing

BostonPricing is a python application helps you predict houses pricing in boston based on data science 
trained sklearn model.

## Installation

    $ git clone https://github.com/sherifhmdy/BostonHousesPricing.git
    $ cd BostonHousesPricing
    $ ./run_kubernetes.sh

## Usage

BostongPricing needs a pre-installed kubernetes cluter like minikube or kubernetes within docker desktop.
You can download docker desktop from the below URL `https://www.docker.com/products/docker-desktop`.
Makefile and bash scripts have been created to facilitate the setup environment, dependencies installation, 
and hosting the image on kubernetes using the below comamnds and scripts.

    $ make setup; source .devops/bin/activate
    $ make install
    $ make lint
    $ ./run_kubernetes.sh
    
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



change 1
