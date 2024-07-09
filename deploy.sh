#!/bin/bash
docker login -u tamilkgs -p dckr_pat_5I-haTWTm-Ri6wa8_m7pOAYsy3k

if [[ $GIT_BRANCH == "origin/dev" ]]; then
       sh'chmod +x build.sh'
       sh'./build.sh'

        docker tag react-image tamilkgs/dev
        docker push tamilkgs/dev

if [[ $GIT_BRANCH == "origin/prod" ]]; then
        sh'chmod +x build.sh'
        sh'./build.sh'

        docker tag react-image tamilkgs/prod
        docker push tamilkgs/prod

else
        echo "failed"
fi
