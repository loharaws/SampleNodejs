FROM node:18-alpine
RUN mkdir -p /home/app
WORKDIR /app
COPY ./app /home/app

# set default dir so that next commands executes in /home/app dir
WORKDIR /home/app

# will execute npm install in /home/app because of WORKDIR
RUN npm install
EXPOSE 8000
CMD ["npm" "server.js"]