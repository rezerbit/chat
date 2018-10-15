#!/bin/bash
echo "tag: "${1:-latest}
cd ..

docker build -t registry.rezerbit.com/chat/app:${1:-latest} -f docker/app/Dockerfile.production .
docker push registry.rezerbit.com/chat/app:${1:-latest}

echo 'success!---------------------------------------------------------------------------'
