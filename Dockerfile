FROM node:10.15

RUN mkdir /usr/src/app
WORKDIR /usr/src/app

ENV PATH /usr/src/app/node_modules/.bin:$PATH

COPY package.json /usr/src/app/package.json
COPY tsconfig.json /usr/src/app/tsconfig.json
COPY webpack.config.js /usr/src/app/webpack.config.js
RUN npm install --silent
RUN npm install react-script webpack -g --silent
RUN npm install --save @types/react @types/react-dom
RUN npm install --save-dev typescript awesome-typescript-loader source-map-loader

CMD ["npm", "start"]