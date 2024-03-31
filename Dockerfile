FROM node:18-alpine

WORKDIR /usr/src/app

RUN yarn global add @colyseus/proxy@0.12.11

ENV PORT 3030
EXPOSE 3030
CMD ["colyseus-proxy"]
