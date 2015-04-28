FROM google/nodejs
MAINTAINER Dale-Kurt Murray "dalekurt.murray@gmail.com"

VOLUME /app
WORKDIR /app
ADD src/package.json /app/
RUN npm install
ADD src /app

RUN cd /app; npm install

EXPOSE 5000

ENTRYPOINT ["npm", "start"]
#CMD ["node", "/app/index.js"]
CMD []
