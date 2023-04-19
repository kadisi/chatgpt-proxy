FROM node:16-alpine
RUN mkdir -p /usr/app
WORKDIR /usr/app
COPY . .
RUN npm install
RUN npm run build
ENV PORT 8000
EXPOSE $PORT
CMD npm run start -- -p $PORT --hostname 127.0.0.1
