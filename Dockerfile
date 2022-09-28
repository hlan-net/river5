ARG ARCH=

FROM ${ARCH}node:current-alpine

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install -g yarn

COPY yarn.lock ./

RUN yarn

COPY . .

COPY config.json .

VOLUME /usr/src/app/data

EXPOSE 8080
EXPOSE 8081 

CMD [ "yarn" , "start" ]
