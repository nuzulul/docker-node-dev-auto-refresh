ARG NODE_VERSION=18.15.0

FROM node:${NODE_VERSION}-alpine

# Use production node environment by default.
ENV NODE_ENV production

WORKDIR /usr/src/app

# Install app dependencies
COPY package.json /usr/src/app/
RUN npm install

# Run the application as a non-root user.
USER node

# Bundle app source
COPY . /usr/src/app

# Expose the port that the application listens on.
EXPOSE 8080

# Run the application.
CMD ["npm","start"]
