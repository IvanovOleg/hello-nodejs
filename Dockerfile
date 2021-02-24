FROM node:14 as build

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install

COPY index.js .

EXPOSE 8000

CMD ["node", "index.js"]
