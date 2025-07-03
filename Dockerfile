
FROM node:14
workdir /app-node
COPY . .
RUN npm install  
ENTRYPOINT npm start
