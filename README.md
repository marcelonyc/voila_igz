# Setup a voila service in an iguazio cluster

This service is an insecure shared resource to display Jupyter Notebooks with Voila. You can tighten security by adding an auth method to the ingress

## Define a location where all users can read/write 
In the Iguazio platform define a directory where all users can read and write files. Developers will place the Notebooks in this location.
The default location is
container: users
user: As defined in setup.sh
subpath: /voila

## Create the voila image
1. cd to the docker directory 
2. docker build -t iguazio/voila .
    1. default image is iguazio/voila
    2. If using this method the image needs to be created on every app node
    3. Alternatively, use a docker registry availavle to the app nodes.
3. The image loads some default python modules
    1. This requires more research. How do we maintain modules.

## Modify setup.sh 
Self documented

## The service template
1. The templace assumes that the location of the shared folder is 

container: users

user: As defined in setup.sh

subpath: /voila

Change template if needed

2. The url for the Voila dashboard is set to 

voila-{{SERVICE_ID}}.default-tenant.app.{{DOMAIN}}

SERVICE_ID and DOMAIN are defined in setup.sh

## Run setup.sh
This step will generate the yaml to deploy the service. The output file is:

voila_igz.yaml

## Deploy service
The yaml defines the deployment, service and ingress

kubectl -n default-tenant apply -f voila_igz.yaml



