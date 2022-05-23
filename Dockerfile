FROM node:16-slim

WORKDIR /usr/src/app

COPY package*.json ./

RUN yarn config set network-timeout 600000 -g
RUN yarn install

COPY . .

EXPOSE 3000

CMD ["yarn", "start"]