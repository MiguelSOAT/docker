# Base image
FROM node:19

# Create app directory
WORKDIR /home/node/project

# Create a global directory for npm
RUN mkdir ~/.npm-global

# Change npm's default directory to the new global directory
RUN npm config set prefix '~/.npm-global'

# Ensure that npm global bin is in the PATH
ENV PATH="/root/.npm-global/bin:${PATH}"

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
COPY package*.json ./

RUN npm install

# Bundle app source
COPY . .

CMD [ "npm", "start" ]
