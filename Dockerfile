# Imagen base de Node
FROM node:18

# Crear carpeta de trabajo
WORKDIR /app

# Copiar package.json y package-lock.json
COPY package*.json ./

# Instalar dependencias
RUN npm install

# Copiar el resto de la aplicación
COPY . .

# Construir el proyecto React
RUN npm run build

# Exponer el puerto que usará Express
EXPOSE 3000

# Iniciar el servidor Express
CMD ["npm", "start"]
