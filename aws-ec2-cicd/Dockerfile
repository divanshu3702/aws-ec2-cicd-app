FROM node:22-alpine

WORKDIR /app

COPY app/package.json app/package-lock.json ./
RUN npm ci --omit=dev

COPY app/server.js ./

ENV PORT=3000
EXPOSE 3000

USER node

CMD ["npm", "start"]
