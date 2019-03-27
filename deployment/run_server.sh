#!/bin/bash

# gunicorn app:app -w 4 -b 0.0.0.0:5005

echo "Selected environment: $1"

if [ "$1" == "production" ] ; then
    echo "Deployment on Production is successful!"
    export LOG=`git log -p -1 --graph --stat --pretty`
    curl -X POST -H 'Content-type: application/json' --data '{"text":"Hello, World from Staging!", "channel":"docs-test","username":"slack-notification-bot","icon_emoji":":slack:"}' $SLACK_URL

else
    echo "Deployment on Staging is successful!"
    export LOG=`git log -p -1 --graph --stat --pretty`
    curl -X POST -H 'Content-type: application/json' --data '{"text":"Hello, World from Production!", "channel":"docs-test","username":"slack-notification-bot","icon_emoji":":slack:"}' $SLACK_URL

fi
