FROM ubuntu
MAINTAINER Lavakumar Dukanam<lavakumar.dukanam@gmail.com>

# make sure apt is up to date
RUN apt-get update

# install nodejs and npm
RUN apt-get install -y nodejs nodejs-legacy npm git git-core

# Create app directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# Install app dependencies
COPY package.json /usr/src/app/
RUN npm install

#Bundle app source
ADD . /usr/src/app

EXPOSE  3000
ENTRYPOINT ["npm", "start"]

