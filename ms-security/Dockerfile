FROM node:11.3.0-alpine
RUN mkdir -p /usr/src/app 
WORKDIR /usr/src/app 
COPY package*.json /usr/src/app/ 
COPY . /usr/src/app 
RUN npm install 
EXPOSE 3000 
CMD [ "npm", "start" ] 