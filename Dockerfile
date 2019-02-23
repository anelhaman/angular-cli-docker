FROM node:8 

RUN npm install -g @angular/cli

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install

COPY server.js ./

EXPOSE 3000

CMD [ "npm", "start" ]
