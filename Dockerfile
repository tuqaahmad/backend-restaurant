FROM node:12.2

ENV HOME=/home/app

RUN apt-get update && apt-get install htop

COPY ./ ./

WORKDIR $HOME/node_docker

RUN npm install --silent --progress=false

COPY . $HOME/node_docker

CMD ["npm", "start"]