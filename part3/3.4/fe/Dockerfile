FROM ubuntu


EXPOSE 5000

ENV REACT_APP_BACKEND_URL=http://localhost:8080 

WORKDIR /usr/src/app

COPY ./material-applications/example-frontend/ .

#RUN apt update && apt install nodejs --yes && apt install npm --yes && npm install && npm run build && npm install -g serve && useradd -m appuser

RUN apt-get update && apt-get install -y \ 
    curl ca-certificates && \ 
    curl -sL https://deb.nodesource.com/setup_14.x | bash && \
    apt-get install -y nodejs && apt-get purge -y --auto-remove curl && \
    rm -rf /var/lib/apt/lists/* && \
    npm install && npm run build && npm install -g serve && useradd -m appuser

USER appuser

CMD ["serve", "-s", "-l", "5000", "build"]