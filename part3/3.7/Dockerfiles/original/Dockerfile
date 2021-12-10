FROM ubuntu

RUN apt update && apt install nodejs --yes
RUN apt install npm --yes

COPY .  .

RUN node -v && npm -v

RUN npm install

RUN npm run build

EXPOSE 3000

CMD ["npm", "start"]
