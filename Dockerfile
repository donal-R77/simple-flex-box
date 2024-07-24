FROM node:alpine
WORKDIR /app
COPY . /app
CMD node index.js 
