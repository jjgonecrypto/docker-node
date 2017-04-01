FROM node:boron

# Create app directory
# RUN mkdir -p /code
WORKDIR /code

# Install app dependencies
RUN npm install -g nodemon

COPY package.json /code/
RUN npm install && npm ls

RUN mv /code/node_modules /node_modules

# Bundle app source
COPY . /code

EXPOSE 8089
CMD [ "npm", "start" ]
