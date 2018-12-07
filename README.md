# nodevue
DockerFile of nodevue image with serve and workbox packages

Node 11.3
Vue-cli 3.2.1
Serve 10.1.1
Workbox 3.6.3

Based on image provide by https://github.com/mhart/alpine-node

TO RUN
docker container run --rm -it --network host -v $(pwd):/app arthurgermano/nodevue /bin/ash

THEN
Inside the container you have access to your present work directory just run your commands!

TO BUILD
docker build --progress plain --build-arg http_proxy=http://localhost:8118 --network host --tag nodevue .

Obs: Execute this command where Dockerfile is!
