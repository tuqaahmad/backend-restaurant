FROM node:alpine

RUN mkdir /app
WORKDIR /app

COPY package.json /app
RUN npm install --save
COPY . /app/
COPY public /app/public

ENV NODE_ENV production
ENV PORT 4000

EXPOSE 4000

CMD ["npm", "start"]
