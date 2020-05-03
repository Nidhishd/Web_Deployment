FROM node

LABEL maintainer="nkdn14@gmail.com"

RUN mkdir /challenge

WORKDIR /challenge

COPY app/ /challenge 

RUN npm install

RUN npm install express-ipfilter

RUN npm run build

EXPOSE 3000

CMD ["npm", "start"]
