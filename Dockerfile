FROM node:20

WORKDIR /app

COPY ./dist/server .

COPY ./src/scripts/create.sql ./src/scripts/create.sql

COPY ./package.json .

RUN npm install --omit=dev

EXPOSE 8866

CMD ["node", "index.js"]

