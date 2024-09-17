# Dockerfile
FROM node:20-buster 

# Instala el cliente MySQL
RUN apt-get update && apt-get install -y default-mysql-client && rm -rf /var/lib/apt/lists/*


# Copia tu aplicación
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install
COPY . .

# Expone el puerto
EXPOSE 3000

# Comando para iniciar la aplicación
CMD ["npm", "start"]
