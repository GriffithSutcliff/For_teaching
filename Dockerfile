# Dockerfile

FROM node:20.15

WORKDIR /app

COPY package.json package-lock.json /app/

RUN npm install

COPY . /app/

EXPOSE 3000

CMD ["node", "index.js"]
