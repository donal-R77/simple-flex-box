FROM node:alpine
WORKDIR /app
COPY . /app
CMD node index.js 
ENTRYPOINT ["bash_test.sh"]
