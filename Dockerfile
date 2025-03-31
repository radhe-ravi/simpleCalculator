FROM node:18-alpine
WORKDIR /src
COPY package*.json ./
RUN npm install
COPY . .
EXPOSE 4200
ARG NODE_ENV=development
ENV NODE_ENV=${NODE_ENV}
CMD ["npm", "start"]
