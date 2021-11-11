FROM node:16-alpine3.12

COPY phonebook/package.json ./
RUN npm install --silent
RUN npm install react-scripts --save

# add app
COPY ./phonebook .

#react app default port
EXPOSE 3000 

# start app
CMD ["npm", "start"]