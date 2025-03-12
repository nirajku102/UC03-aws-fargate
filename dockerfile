FROM node:18

COPY package*.json ./

RUN npm init -y

RUN npm install

RUN npm install express

COPY . .

EXPOSE 3001

CMD ["node", "./src/appointment-service.js"]



