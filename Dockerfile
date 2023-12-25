FROM node

RUN mkdir ./App

COPY ./ReactNodeTesting ./App

WORKDIR ./App

RUN npm install

EXPOSE 3000

CMD ["node","index.js"]
