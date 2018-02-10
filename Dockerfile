# specify the node base image with your desired version node:<version>
FROM node:8

# Create app directory
WORKDIR /app

COPY package.json /app
COPY yarn.lock /app

RUN yarn

# Bundle app source
COPY . /app

# replace this with your application's default port
EXPOSE 3000

CMD [ "yarn", "start" ]
