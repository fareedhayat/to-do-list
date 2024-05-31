FROM node:lts-alpine

WORKDIR /usr/src/app

COPY ["package.json", "package-lock.json*", "./"]

RUN npm install 

COPY . .

EXPOSE 2400

USER node

CMD ["node", "index.js"]
