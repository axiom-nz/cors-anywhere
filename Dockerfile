FROM node:23.3-alpine

WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install

COPY . .

EXPOSE 8081

CMD [ "node", "server.js" ]
