FROM node:15

# diretório criado no container
WORKDIR /usr/src/

# copia todos os arquivos para o container
COPY . . 

RUN npm i 
RUN npx prisma generate

EXPOSE 5000
# RUN apt-get update && apt-get install -y wget

# ENV DOCKERIZE_VERSION v0.6.1
# RUN wget https://github.com/jwilder/dockerize/releases/download/$DOCKERIZE_VERSION/dockerize-linux-amd64-$DOCKERIZE_VERSION.tar.gz \
# && tar -C /usr/local/bin -xzvf dockerize-linux-amd64-$DOCKERIZE_VERSION.tar.gz \
# && rm dockerize-linux-amd64-$DOCKERIZE_VERSION.tar.gz 


CMD [ "npm", "run", "dev" ]