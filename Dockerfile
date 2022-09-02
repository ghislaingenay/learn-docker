# Specify the base image 
FROM node:14-alpine

WORKDIR /usr/app

# Import package.json and index.js (all files)
COPY ./package.json ./

# Install some dependencies
RUN npm install
COPY ./ ./

# Default command
CMD ["npm","start"]