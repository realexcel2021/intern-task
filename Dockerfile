FROM node:alpine

# set work directory
WORKDIR /app

# copy all files
COPY . /app/

# install packages
RUN npm install

# open port to expose app
EXPOSE 3000

# execute the app entry point
CMD [ "node", "app.js" ]