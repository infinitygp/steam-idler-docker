FROM node:22-alpine

WORKDIR /app
ENV NODE_ENV=production
COPY package.json .

RUN npm install

COPY src/ src/
COPY idler.js .

CMD ["node", "idler.js"]