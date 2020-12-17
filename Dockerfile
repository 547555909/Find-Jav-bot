FROM node:latest

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

ADD index.js /usr/src/app/index.js
ADD pm2.json /usr/src/app/pm2.json
ADD package.json /usr/src/app/package.json
RUN npm install
RUN npm run test
CMD [ "npm", "start" ]
