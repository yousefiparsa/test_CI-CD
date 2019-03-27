#!/bin/bash

# gunicorn app:app -w 4 -b 0.0.0.0:5005

echo "Selected environment: $1"

if [ "$1" == "production" ] ; then
    echo "Deployment on Production is successful!"
    export LOG=`git log -1 --graph --stat --pretty`
    python log/slack_notification.py production

else
    echo "Deployment on Staging is successful!"
    export LOG=`git log -1 --graph --stat --pretty`
    python log/slack_notification.py staging

fi
