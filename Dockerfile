FROM node:18-alpine

RUN apk add --no-cache ffmpeg 

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . .

EXPOSE 8080

CMD [ "npm", "start" ]
