# Stage 1: Build the app with Node.js
FROM node:16-alpine AS build

# Устанавливаем рабочую директорию
WORKDIR /app

# Копируем package.json и package-lock.json
COPY package*.json ./

# Устанавливаем зависимости
RUN npm install

# Копируем остальные файлы проекта
COPY . .

# Собираем проект
RUN npm run build

# Stage 2: Set up Nginx with the built app
FROM nginx:1.21.1-alpine

# Копируем Nginx конфиг
COPY ./nginx/nginx.conf /etc/nginx/nginx.conf

# Удаляем стандартные файлы Nginx
RUN rm -rf /usr/share/nginx/html/*

# Копируем собранные файлы из Stage 1
COPY --from=build /app/dist /usr/share/nginx/html

# Открываем нужный порт
EXPOSE 3000

# Запускаем Nginx
CMD ["nginx", "-g", "daemon off;"]
