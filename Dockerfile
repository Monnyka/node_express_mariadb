FROM node

RUN apt install -y curl

RUN wget https://nodejs.org/download/release/v11.15.0/node-v11.15.0-linux-armv6l.tar.gz

CMD ["curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -"]

CMD ["apt-get install -y nodejs"]

RUN node -v

WORKDIR /app

COPY . /app/

RUN npm install

EXPOSE 9005

ENTRYPOINT ["node"]

CMD ["server.js"]