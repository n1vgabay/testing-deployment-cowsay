# Pull the image from dockerhub
# node with alpine version

FROM node:lts-alpine3.13

# FROM node

# Create a directory in the image env
WORKDIR /app

# Move all the relevant .json files to home directory in the image env
COPY ./src/ /app/

RUN npm install

# CMD [ "node" ,"server.js" ]
CMD [ "npm", "start" ]





