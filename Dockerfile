FROM node:6.9

WORKDIR /usr/src/app/

ADD package.json .
RUN npm set progress=false
RUN npm install

ADD . .

CMD npm run nodemon-start
