FROM node:7.2.1-alpine

# Set a working directory
WORKDIR /usr/src/app

# Copy applicaiton files
COPY ./build .

# Install Node.js dependencies
RUN npm install --production --silent --no-progress --depth=0

CMD [ "node", "server.js" ]
