FROM node:alpine

ADD ./app/package.json .
ADD ./app/yarn.lock .

RUN rm -rf node_modules
RUN yarn install
RUN yarn global add @vue/cli-service

VOLUME /code
WORKDIR /code

CMD ["yarn", "serve"]
