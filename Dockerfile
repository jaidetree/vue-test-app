FROM node:alpine

RUN npm install -g @vue/cli

VOLUME /code

WORKDIR /code

CMD ["vue", "ui"]
