FROM google/nodejs
MAINTAINER Dale-Kurt Murray "dalekurt.murray@gmail.com"

WORKDIR /app
ADD src/package.json /app/
RUN npm install
ADD src /app

#RUN cd /app; npm install express

EXPOSE 5000

ENTRYPOINT ["npm", "start"]
#CMD ["node", "/app/index.js"]
CMD []
