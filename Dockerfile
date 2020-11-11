FROM node:latest as builder
WORKDIR '/app'
COPY package.json .
RUN npm install
COPY ./ ./
RUN node server

FROM nginx 
EXPOSE 80
COPY --from=builder /app/build /usr/share/nginx/html