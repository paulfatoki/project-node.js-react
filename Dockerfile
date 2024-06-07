FROM node:10

RUN mkdir /app

# Create app directory
WORKDIR /app

COPY ./package.json /app/package.json
COPY ./package-lock.json /app/package-lock.json

RUN npm install
RUN npm install express
RUN npm install -g nodemon

# Bundle app source
COPY . /app

EXPOSE 8080

CMD [ "nodemon", "app.js" ]