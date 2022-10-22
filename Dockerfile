FROM node:16-alpine

WORKDIR /usr/src/app

COPY package.json yarn.lock ./

RUN yarn install --ignore-scripts --frozen-lockfile --production --network-timeout 600000 && yarn cache clean

CMD ["npx", "colyseus-proxy"]
