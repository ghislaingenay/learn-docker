# Specify the base image 
FROM node:14-alpine

# Import package.json and index.js (all files)
COPY ./ ./

# Install some dependencies
RUN npm install -y

# Default command
CMD ["npm","start"]