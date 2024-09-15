# Usar una imagen base de Node.js
FROM node:18

# Crear y establecer el directorio de trabajo en el contenedor
WORKDIR /app

# Copiar los archivos package.json y package-lock.json para instalar dependencias
COPY package*.json ./

# Instalar las dependencias del proyecto
RUN npm install

# Copiar el resto de los archivos de la aplicación
COPY . .

# Exponer el puerto que la aplicación usa
EXPOSE 3000

# Comando para iniciar la aplicación
CMD ["npm", "start"]
