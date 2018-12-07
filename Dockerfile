# https://github.com/mhart/alpine-node
FROM mhart/alpine-node:11

# adding proxy
RUN export http_proxy=http://localhost:8118

# Configuring node proxy and repository
RUN npm config set proxy http://localhost:8118 && npm config set https-proxy http://localhost:8118
RUN npm config set registry http://registry.npmjs.org

# Configuring VUE
RUN npm install -g @vue/cli

# Configuring SERVE to run local projects
RUN npm install -g serve

# Configuring WORKBOX
RUN npm install -g workbox-cli

WORKDIR /app

EXPOSE 3000
EXPOSE 8080
EXPOSE 5000

MAINTAINER Arthur Jose Germano <email@email.com>
