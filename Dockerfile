FROM alpine

RUN apk add --update nodejs npm

WORKDIR /app

COPY package*.json ./

RUN npm ci

COPY . .

CMD ["npm", "run", "dev"]