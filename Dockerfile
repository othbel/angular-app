FROM node:slim AS builder

WORKDIR /app

COPY package.json .

RUN npm install

COPY . .

RUN npm run build 

FROM nginx:stable-alpine3.17-slim

COPY --from=builder /app/build/my-app/ /usr/share/nginx/html/