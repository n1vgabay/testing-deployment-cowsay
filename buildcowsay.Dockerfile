FROM node:lts-alpine3.13

WORKDIR /app

COPY ./src/ /app/

RUN npm install

CMD [ "npm", "start" ]

# 1. In the terminal switch yourself inside the directory
# 2. Build docker image using this command: 
    # docker build -t testing-deployment-cowsay -f buildcowsay.Dockerfile .
    # NOTE: Copy all the command above
# 3. Run docker image:
    # docker run -it -p 8081:8080 testing-deployment-cowsay:latest
# 4. In your browser, access: localhost:8081
# NOTE: If port 8081 is allocated, use different one