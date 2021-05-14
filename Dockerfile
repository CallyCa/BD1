FROM node:11

ENV HOST 0.0.0.0

ARG API_URL
ARG API_URL_BROWSER

WORKDIR /app

COPY ./package.json .
COPY ./package-lock.json .

RUN npm install -g yarn && yarn

COPY . .

RUN yarn run build

EXPOSE 5000

CMD npm start
