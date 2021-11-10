#Pull the official base image
FROM node:14.18.1

#Set working directory
WORKDIR /app

#Install application dependecies
COPY package*.json ./
RUN npm install

#Add app
COPY . .

#Set environment variable
ENV REACT_APP_API_KEY = 7644307db41b49d38c526961f0a060b2

#Add port
EXPOSE 3000

#Start app
CMD ["npm","start"]
