FROM node:6-alpine

WORKDIR /usr/app
COPY . .
RUN apk --update add git \
&& npm install \
&& npm run bower install \
&& npm install http-server \
&& npm run build

EXPOSE 3000
