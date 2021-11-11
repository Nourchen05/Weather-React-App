#Pull the official base image
FROM node:14.18.1-alpine

#Set working directory
WORKDIR /app

#Install application dependecies
COPY package*.json ./
RUN npm install

#Add app
COPY . .

#Add port
EXPOSE 3000

#Start app
CMD ["npm","start"]
