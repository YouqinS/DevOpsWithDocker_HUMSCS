FROM node:14-alpine

EXPOSE 3000

WORKDIR /usr/src/app

COPY . .

RUN npm install 

RUN adduser -S appuser && chown -R appuser /usr/src/app 

USER appuser

CMD ["npm", "start"]

