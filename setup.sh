#!/bin/sh
SERVICE_ID='voila' 			# A suffix to append to the service name
DOMAIN="trial.iguazio-c0.com" 	# The domain where Iguazio is running. Path after app.
V3IO_USERNAME="<V3IO_USERNAME>"   	# User runnig the Voila process
V3IO_ACCCESS_KEY="<V3IO_ACCESS_KEY>"	# acccess key for the user 

cat voila_igz.yaml.template|sed s/{{SERVICE_ID}}/${SERVICE_ID}/g| \
sed s/{{DOMAIN}}/${DOMAIN}/g |\
sed s/{{V3IO_USERNAME}}/${V3IO_USERNAME}/g |\
sed s/{{V3IO_ACCCESS_KEY}}/${V3IO_ACCCESS_KEY}/g > voila_igz.yaml
