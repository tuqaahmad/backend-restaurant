FROM node:12.2

ENV HOME=/home/app

RUN apt-get update && apt-get install htop

COPY ./ ./

WORKDIR $HOME/node_docker

RUN npm install --silent --progress=false

COPY --from=builder /app/build /usr/share/nginx/html

CMD ["npm", "start"]