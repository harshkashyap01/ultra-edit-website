FROM node
ENV MONGO_DB_USERNAME=admin 
ENV MONGO_DB_PWD=qwerty
RUN mkdir -p testapp
COPY . /testapp
RUN cd ../
RUN mkdir -p node_modules
RUN cd ../
RUN  npm install
CMD [ "node","/testapp/server.js"]