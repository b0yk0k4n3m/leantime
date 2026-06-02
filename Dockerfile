# 1. Dùng bản Leantime chính thức làm nền tảng (đã cài sẵn mọi thư viện, framework)
FROM leantime/leantime:latest

# 2. Chép đè các thư mục chứa code bạn đã custom vào bên trong Container
COPY ./src/ /var/www/html/src/
COPY ./public/ /var/www/html/public/
COPY ./app/ /var/www/html/app/

# 3. Phân quyền lại để hệ thống chạy mượt mà, không bị lỗi không đọc được file
RUN chown -R www-data:www-data /var/www/html/