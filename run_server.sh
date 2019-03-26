#!/bin/bash

# gunicorn app:app -w 4 -b 0.0.0.0:5005

echo "Selected environment: $1"

if [ "$1" == "production" ] ; then
    echo "Deployment on Production is successful!"
    pwd
    cd ~/build/yousefiparsa/test/
    ls
else
    echo "Deployment on Staging is successful!"
    pwd
    cd ~/build/yousefiparsa/test/
    ls
fi
