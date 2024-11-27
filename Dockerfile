# Node.js bazlı bir Docker imajı kullanıyoruz
FROM node:18-alpine

# Çalışma dizinini oluştur
WORKDIR /app

# Bağımlılıkları yüklemek için package.json ve package-lock.json dosyalarını kopyala
COPY package*.json ./

# Bağımlılıkları yükle
RUN npm install

# Uygulama kodunu kopyala
COPY . .

# Uygulama için varsayılan portu belirt
EXPOSE 3000

# Uygulamayı çalıştır
CMD ["node", "src/index.js"]
