FROM node:18-alpine as builder

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm i --quiet

COPY . ./

RUN npm run build

FROM node:18-alpine as prod

WORKDIR /usr/src/app

ENV NODE_ENV=production

COPY package*.json ./

RUN npm i --omit=dev --quiet

COPY --from=builder /usr/src/app/dist ./dist

EXPOSE 80

CMD ["node", "dist/index.js"]
