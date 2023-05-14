FROM node:18-alpine

WORKDIR /app/frontend

RUN apk update && apk upgrade

RUN apk add git

COPY ./package*.json /app/frontend/

RUN yarn install && yarn cache clean --force

COPY . .

ENV PATH ./node_modules/.bin/:$PATH