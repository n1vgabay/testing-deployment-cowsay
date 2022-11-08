FROM node:lts-alpine3.13

WORKDIR /app

COPY ./src/ /app/

RUN npm install

CMD [ "npm", "start" ]





