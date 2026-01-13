# Base image Node.js versi 14
FROM node:14

# Set working directory di container
WORKDIR /app

# Salin seluruh source code ke container
COPY . .

# Set environment variable untuk production dan database host
ENV NODE_ENV=production DB_HOST=item-db

# Install dependency production dan build aplikasi
RUN npm install --production --unsafe-perm && npm run build

# Port aplikasi
EXPOSE 8080

# Jalankan aplikasi
CMD ["npm", "start"]