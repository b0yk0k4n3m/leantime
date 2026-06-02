# 1. Dùng bản Leantime chính thức làm nền tảng
FROM docker.io/leantime/leantime:latest

# 2. Cấp quyền sở hữu trực tiếp trong lúc copy để tránh lỗi "Operation not permitted"
COPY --chown=www-data:www-data ./app/ /var/www/html/app/
COPY --chown=www-data:www-data ./public/ /var/www/html/public/