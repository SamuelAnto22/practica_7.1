# 1. Usamos una imagen oficial de Node.js ligera como base
FROM node:20-alpine

# 2. Creamos una carpeta de trabajo dentro del contenedor
WORKDIR /app

# 3. Copiamos los archivos de dependencias
COPY package*.json ./

# 4. Instalamos las dependencias
RUN npm install

# 5. Copiamos el resto de nuestro código (incluido app.js)
COPY . .

# 6. Exponemos el puerto (si tu app web usa el 8080, ponemos ese)
EXPOSE 8080

# 7. El comando que se ejecutará al encender el contenedor
CMD ["npm", "start"]