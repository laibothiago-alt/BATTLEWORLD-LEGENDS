# BATTLEWORLD V1 — FFA e HUD anime 90s
FROM node:22-slim
WORKDIR /app
COPY battleworld-app.tar.gz /tmp/battleworld-app.tar.gz
RUN tar -xzf /tmp/battleworld-app.tar.gz -C /app && rm /tmp/battleworld-app.tar.gz
ENV NODE_ENV=production
EXPOSE 3000
CMD ["node", "server.js"]
