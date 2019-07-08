FROM node:8

WORKDIR /usr/src/app

COPY ["package.json", "package-lock.json*", "./"]

RUN npm install && mv node_modules ../

COPY . .

EXPOSE 3010

CMD ["npm", "run", "prod"]
