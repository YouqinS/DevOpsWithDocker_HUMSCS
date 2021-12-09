#https://hub.docker.com/_/node
FROM node:14-alpine

EXPOSE 5000

WORKDIR /usr/src/app

COPY ./material-applications/example-frontend/ .

ENV REACT_APP_BACKEND_URL=http://localhost:8080 

RUN npm install && npm run build && npm install -g serve && adduser -S appuser 

USER appuser

CMD ["serve", "-s", "-l", "5000", "build"]


