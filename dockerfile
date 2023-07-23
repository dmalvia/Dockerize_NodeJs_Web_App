FROM node:18-alpine

#Create a app directory
WORKDIR /app

#Install app dependencies
COPY package*.json ./

#Run npm install
RUN npm install

#Bundle app souce
COPY . .

EXPOSE 8080

CMD [ "npm", "start" ]


# docker build -t . dmalvia/node-web-app ----- -t is for tags
# docker run -d -p 8080:8080 dmalvia/node-web-app:v1
# docker images
# docker ps
# docker ps -a (shows all the containers created)
# docket rm <container_id> remove the container
# docker logs <container_id>
# docker stop <container_id>
# docker exec -it <container_id> /bin/bash ------- -it is for interactive mode
# docker exec -it <container_id> /bin/sh ------- -it is for interactive mode
# curl -i localhost:5000
# docker kill <container_id>


# docker mount volume to running continer
# docker run -d -p container_port:8080 -v $(pwd):/app dmalvia/node-web-app:v1
# docker run -d -p 8001:5006 -v $(pwd):/app --env-file ./.env dmalvia/node-web-app:v3
# docker run -d -p 8001:5001 -v $(pwd):/app -e PORT=5001 dmalvia/node-web-app:v3