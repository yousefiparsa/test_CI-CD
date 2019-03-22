#!/bin/bash

# gunicorn app:app -w 4 -b 0.0.0.0:5005

echo "Selected environment: $1"

if [ "$1" == "staging"]; then
    echo "Deployment on Staging is successful!"
else
    echo "Deployment on Production is successful!"
fi
