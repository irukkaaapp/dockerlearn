FROM node:16


WORKDIR /home/premk/app/dockerlearn


COPY nest-js-starter/package*.json ./

RUN npm install

ADD nest-js-starter/ ./

RUN npm run build

EXPOSE 8082
CMD [ "node", "dist/main" ]
