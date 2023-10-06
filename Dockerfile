# Use the official Node.js LTS Alpine image as the base image
FROM node:lts-alpine

WORKDIR /app

# Create a non-root user to run the application
RUN addgroup -S myappgroup && adduser -S myappuser -G myappgroup

# Install the required libraries and tools with minimal privileges
RUN apk --no-cache add --virtual .build-deps build-base python ca-certificates && apk --no-cache add cairo-dev pango-dev jpeg-dev giflib-dev librsvg-dev

# Switch to the non-root user
USER myappuser
RUN npm install -g npm && npm install -g pnpm && pnpm install -g bcrypt express yjs nodemon utf-8-validate

USER node
RUN rm -rf /var/cache/apk/* && apk del .build-deps

USER myappuser
