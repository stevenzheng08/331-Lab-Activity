FROM node:20-alpine

WORKDIR /app
COPY . .

RUN npm install -g serve

CMD ["sh", "-c", "serve -s . -l ${PORT:-10000}"]
