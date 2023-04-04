FROM node:slim AS builder

WORKDIR /app

COPY package.json .

RUN npm install

COPY . .

RUN npm run build --prod

FROM nginx:stable-alpine3.17-slim

COPY --from=builder /app/dist/my-app/ /usr/share/nginx/html/