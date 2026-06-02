# 1. Dùng bản Leantime chính thức làm nền tảng
FROM docker.io/leantime/leantime:latest

# 2. Chỉ copy 2 thư mục cốt lõi chắc chắn tồn tại
COPY ./app/ /var/www/html/app/
COPY ./public/ /var/www/html/public/

# 3. Phân quyền lại để tránh lỗi hệ thống
RUN chown -R www-data:www-data /var/www/html/