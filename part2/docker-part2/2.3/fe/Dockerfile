#https://hub.docker.com/_/node
FROM node:14-alpine

EXPOSE 5000

WORKDIR /usr/src/app


# Copy all of the content from the project to the image
COPY ./material-applications/example-frontend/ .

#Check your install
RUN node -v && npm -v

#Install all packages
RUN npm install

ENV REACT_APP_BACKEND_URL=http://localhost:8080 

#build the static files 
RUN npm run build

RUN npm install -g serve



CMD ["serve", "-s", "-l", "5000", "build"]
