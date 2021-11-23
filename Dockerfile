FROM node:12

RUN mkdir /app
WORKDIR /app

COPY package.json /app

RUN npm install

COPY . /app

EXPOSE 8081

CMD ["node", "server.js"]


#docker run -p 5001:5001 a71f2b2e8473