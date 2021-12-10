FROM golang:alpine as build-stage

WORKDIR /usr/src/app

COPY ./material-applications/example-backend/ .

RUN go build

FROM alpine:latest 

WORKDIR /usr/src/app

COPY --from=build-stage ./usr/src/app/server ./usr/src/app/server

EXPOSE 8080 

ENV PORT=8080

ENV REQUEST_ORIGIN=http://localhost:5000

CMD ["/usr/src/app/server"]
