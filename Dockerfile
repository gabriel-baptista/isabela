FROM node:16.3.0-alpine 

# seta o diretorio que vai usar
WORKDIR /usr/app

# copia todos os arquivos com o nome package e que seja json
COPY package*.json ./
RUN npm install

# copia o restante dos arquivos
COPY . .
RUN npm run build

EXPOSE 3000

CMD [ "npm", "start" ]
