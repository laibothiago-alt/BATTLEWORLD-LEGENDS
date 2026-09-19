FROM node:22-slim
WORKDIR /app

RUN apt-get update \
 && apt-get install -y --no-install-recommends unzip \
 && rm -rf /var/lib/apt/lists/*

COPY battleworld-app.tar.gz.zip /tmp/battleworld.zip
RUN unzip -q /tmp/battleworld.zip -d /app \
 && rm /tmp/battleworld.zip

ENV NODE_ENV=production PORT=3000
EXPOSE 3000

CMD ["node", "server.js"]
