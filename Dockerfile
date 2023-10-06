FROM node:lts-slim

ARG NODE_ENV=production

RUN apt-get update -q && apt-get install --no-install-recommends -y -q build-essential libcairo2-dev libpango1.0-dev libjpeg-dev libgif-dev librsvg2-dev

RUN npm i npm@latest -g

USER node
RUN npm i -g canvas express yjs sharp

USER root
RUN apt-get purge -y --auto-remove
