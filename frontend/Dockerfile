FROM node:14-alpine

RUN apk update && apk upgrade

RUN mkdir /app
WORKDIR /app/frontend
ENV PATH /app/frontend/node_modules/.bin:$PATH
ENV PATH /app/node_modules/.bin:$PATH

COPY package.json yarn.lock ./
RUN yarn install && yarn global add react-scripts

COPY . .

EXPOSE 3001

ENTRYPOINT ["sh", "./startup.sh"]
