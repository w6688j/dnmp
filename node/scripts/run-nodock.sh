#!/bin/bash

SCRIPT="$1"

if [[ ${PROJECT_PATH:0:1} = "/" ]]; then
    export PROJECT_PATH=$PROJECT_PATH
else
    export PROJECT_PATH="/opt/app/"$PROJECT_PATH
fi

cd $PROJECT_PATH

if [[ $YARN = true ]]; then
    cd $PROJECT_PATH; yarn
else
    cd $PROJECT_PATH; npm i --force
fi

cd $PROJECT_PATH; $SCRIPT
