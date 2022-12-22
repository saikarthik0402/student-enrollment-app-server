FROM node:19-alpine3.15

EXPOSE 4200

RUN mkdir - p /home/app
WORKDIR /home/app
COPY . /home/app

RUN npm install

CMD [ "npm", "start" ]
