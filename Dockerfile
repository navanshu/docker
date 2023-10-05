# Use the official Node.js LTS Bullseye image as the base image
FROM node:lts-bullseye-slim

# Install the required libraries and tools
RUN apt-get update -qq && apt-get install -y -qq build-essential libcairo2-dev libpango1.0-dev libjpeg-dev libgif-dev librsvg2-dev
