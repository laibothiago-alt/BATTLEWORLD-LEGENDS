FROM node:22-slim
WORKDIR /app
ADD BATTLEWORLD-V1.5-ANIME.tar.gz /app
ENV NODE_ENV=production PORT=3000
EXPOSE 3000
CMD ["node", "server.js"]
