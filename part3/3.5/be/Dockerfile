FROM golang:alpine

EXPOSE 8080 

WORKDIR /usr/src/app

COPY ./material-applications/example-backend/ .

ENV PORT=8080

ENV REQUEST_ORIGIN=http://localhost:5000

ENV REDIS_HOST=redis

RUN go build && apk add build-base && go test ./... && adduser -S appuser && chmod a+x server && chown -v appuser /usr/src/app 

USER appuser

CMD ["/usr/src/app/server"]
