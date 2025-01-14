FROM node:20.10.0-alpine

WORKDIR /app

COPY package.json .
RUN npm install
COPY . .
EXPOSE 3001

CMD [ "node", "./src/app.js"]