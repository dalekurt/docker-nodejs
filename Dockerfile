FROM google/nodejs
MAINTAINER Dale-Kurt Murray "dalekurt.murray@gmail.com"

VOLUME /app
WORKDIR /app
ADD src/package.json /app/
RUN npm install
ADD src /app

EXPOSE 5000

#ENTRYPOINT ["npm", "start"]
CMD []

