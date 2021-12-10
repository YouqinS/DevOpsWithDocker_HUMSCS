FROM node:14-alpine as build-stage

EXPOSE 5000

WORKDIR /usr/src/app

ENV REACT_APP_BACKEND_URL=http://localhost:8080 

COPY ./material-applications/example-frontend/ .

RUN npm install && npm run build

FROM alpine:latest

WORKDIR /usr/src/app

RUN apk add --update nodejs npm && npm install -g serve && adduser -S appuser 

COPY --from=build-stage ./usr/src/app/build ./usr/src/app/build

USER appuser

CMD ["serve", "-s", "-l", "5000", "build"]


