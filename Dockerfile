FROM node:19-alpine3.15

EXPOSE 4200

RUN mkdir - p /home/app
WORKDIR /home/app
COPY . /home/app
COPY --from=student-enrollment-app-build-image:latest /home/app/dist /home/app/dist

#RUN ls
RUN npm install

CMD [ "npm", "start" ]

