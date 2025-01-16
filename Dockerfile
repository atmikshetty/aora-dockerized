FROM node:18-bullseye

WORKDIR /usr/src/app

COPY package.json package-lock.json ./

RUN npm install

COPY . .

EXPOSE 19000 19001 19002

CMD ["npx", "expo", "start"]
