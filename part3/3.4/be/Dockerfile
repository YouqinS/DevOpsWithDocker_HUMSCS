FROM ubuntu

EXPOSE 8080 

WORKDIR /usr/src/app

COPY ./material-applications/example-backend/ .

ENV PORT=8080

ENV REQUEST_ORIGIN=http://localhost:5000

ENV REDIS_HOST=redis

ENV PATH=$PATH:/usr/local/go/bin

RUN apt-get update && apt-get install -y wget gcc && \
rm -rf /usr/local/go && \
wget -c https://golang.org/dl/go1.16.3.linux-amd64.tar.gz && \
tar -C /usr/local -xzf go1.16.3.linux-amd64.tar.gz && \
go build && go test ./... && useradd -m appuser

USER appuser

CMD ["/usr/src/app/server"]
