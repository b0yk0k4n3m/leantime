# 1. Dùng bản Leantime chính thức làm nền tảng
FROM docker.io/leantime/leantime:latest

# 2. Chỉ chép đè những thư mục chắc chắn tồn tại trong mã nguồn mới
COPY ./app/ /var/www/html/app/
COPY ./public/ /var/www/html/public/

# Nếu bạn có ý định sửa giao diện (HTML/CSS), nó sẽ nằm ở thư mục resources, hãy copy thêm:
COPY ./resources/ /var/www/html/resources/

# 3. Phân quyền lại để tránh lỗi không đọc được file
RUN chown -R www-data:www-data /var/www/html/