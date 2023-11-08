FROM node:14-alpine AS builder
ENV NODE_ENV production

WORKDIR /app

COPY package.json .
RUN yarn install --production

COPY . .

RUN npm run build

CMD ["npm", "start"]
