FROM node:lts-alpine3.13

EXPOSE ${PORT}

# Create a directory in the image env
WORKDIR /app

# Move all the relevant files inside app directory from src
COPY ./src/ /app/
COPY entry-point.sh /app/

# install all dependencies (json packages file)
RUN npm install

# start the json web app
# CMD [ "npm", "start" ]
# moved to the script , entry-point.sh to start from there


# Giving file's permmisions
RUN chmod +x entry-point.sh

# THIS IS THE CHANGE FOR GIT

ENTRYPOINT [ "sh" ,"./entry-point.sh" ]