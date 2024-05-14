FROM node:16

ENV MONGODB_CONNECTION_PROTOCOL mongodb+srv
ENV MONGODB_DB_NAME gha-demo-db
ENV MONGODB_CLUSTER_ADDRESS cluster0.z4cet9v.mongodb.net
ENV MONGODB_USERNAME zuleta0192
ENV MONGODB_PASSWORD necS3nd7KkFkOFrK

WORKDIR /app

COPY package*.json .

RUN npm install

COPY . .

CMD ["npm", "start"]