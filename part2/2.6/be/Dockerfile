#https://hub.docker.com/_/node
FROM golang:1.16.10-bullseye

EXPOSE 8080 

WORKDIR /usr/src/app


# Copy all of the content from the project to the image
COPY ./material-applications/example-backend/ .

RUN go build

RUN go test ./...


ENV PORT=8080
#the request will be originating from webrowser localhost
ENV REQUEST_ORIGIN=http://localhost:5000
ENV REDIS_HOST=redis

RUN chmod a+x server

CMD ["/usr/src/app/server"]
