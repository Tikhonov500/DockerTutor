FROM node:19-alpine

# Copy package.json, wildcard used so both package.json AND package-lock.json are copied
# slash '/' at the end of app is important, so it created an app directory, otherwise you'll get an error
COPY package*.json /usr/app/

# Copy app files from src directory
COPY src /usr/app/
WORKDIR /app

# Install app dependencies
RUN npm install

CMD ["node", "server.js"]

