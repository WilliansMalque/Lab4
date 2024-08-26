FROM node:latest
WORKDIR /app
COPY package.json .
RUN npm config set strict-ssl false
RUN npm install
COPY . .
EXPOSE 3000
CMD ["node", "index.js"]
