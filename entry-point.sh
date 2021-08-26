#!/bin/bash

echo "This is the script!!!"
echo Your container args are: "$@"
if [ $# -eq 0 ]; then
    echo "No argument passed"
    echo "Set port to deafult 8080"
else
    export PORT=$1
fi


# start the web app
npm start 