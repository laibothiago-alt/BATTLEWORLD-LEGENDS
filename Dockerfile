FROM node:22-slim

WORKDIR /app

COPY battleworld-app.tar.gz /tmp/battleworld-app.tar.gz
RUN tar -xzf /tmp/battleworld-app.tar.gz -C /app \
 && rm /tmp/battleworld-app.tar.gz

ENV NODE_ENV=production PORT=3000
EXPOSE 3000

CMD ["node", "server.js"]
