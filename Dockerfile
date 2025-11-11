FROM node:20-alpine
WORKDIR /app
COPY app/package*.json ./
RUN npm install
COPY app/ .
ARG COMMIT_SHA
ENV COMMIT_SHA=$COMMIT_SHA
EXPOSE 3003
CMD ["node","index.js"]
