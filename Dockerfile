FROM node:20-alpine
WORKDIR /app
COPY app/package*.json ./
RUN npm ci --omit=dev
COPY app/ .
ENV PORT=8080
ARG COMMIT_SHA
ENV COMMIT_SHA=$COMMIT_SHA
EXPOSE 8080
CMD ["node","server.js"]
