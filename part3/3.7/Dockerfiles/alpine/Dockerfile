FROM node:alpine

EXPOSE 3000

WORKDIR /usr/src/app

COPY . .

RUN npm install && npm run build && npm install -g serve && adduser -S appuser 

USER appuser

CMD ["serve", "-s", "-l", "3000", "build"]
