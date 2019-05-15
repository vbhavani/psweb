# Test web-app to use with Pluralsight courses and Docker Deep Dive book

# Linux x64 (layer 1)
FROM alpine

LABEL maintainer="nigelpoulton@hotmail.com"

# Install Node and NPM (layer 2)
RUN apk add --update nodejs nodejs-npm

# Copy app to /src (layer 3)
COPY . /src

WORKDIR /src

# Install dependencies (layer 4)
RUN  npm install

EXPOSE 8080

ENTRYPOINT ["node", "./app.js"]
