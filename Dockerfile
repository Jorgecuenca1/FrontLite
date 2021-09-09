# pull official base image
FROM node:alpine
WORKDIR /code-frontend
COPY package.json ./
COPY package-lock.json ./
RUN npm install
RUN npm install react-scripts@3.4.1 -g
COPY . /code-frontend/