# Menggunakan Node.js versi 14
FROM node:14

# Setel direktori kerja di dalam container ke /src
WORKDIR /src

# Salin package.json dan package-lock.json ke direktori kerja
COPY package*.json ./

# Instal dependensi
RUN npm install

# Unduh skrip wait-for-it.sh
RUN wget -O ./wait-for-it.sh https://raw.githubusercontent.com/vishnubob/wait-for-it/master/wait-for-it.sh

# Buat skrip wait-for-it.sh menjadi eksekusi
RUN chmod +x ./wait-for-it.sh

# Salin file index.js ke direktori kerja
COPY index.js ./

# Atur PORT menjadi 3001
ENV PORT=3001

# Expose port yang ditentukan
EXPOSE $PORT

# Menentukan perintah untuk menjalankan aplikasi setelah menunggu RabbitMQ mulai
CMD ["./wait-for-it.sh", "my-rabbitmq:5672", "--timeout=30", "--", "node", "index.js"]
