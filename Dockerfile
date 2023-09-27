# Use the official Node.js LTS Bullseye image as the base image
FROM node:lts-bullseye

# Install the required libraries and tools
RUN apt-get update && apt-get install -y build-essential libcairo2-dev libpango1.0-dev libjpeg-dev libgif-dev librsvg2-dev
