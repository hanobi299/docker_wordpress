# Sử dụng ảnh wordpress
FROM wordpress
LABEL authors="nobi"

# Thiết lập môi trường
ENV WORDPRESS_DB_HOST=mysql:3306
ENV WORDPRESS_DB_USER=wordpress
ENV WORDPRESS_DB_PASSWORD=wordpress
ENV WORDPRESS_DB_NAME=wordpress

# Mở cổng 80 của container
EXPOSE 80
