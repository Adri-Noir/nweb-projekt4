FROM nginx:1.25
LABEL authors="acvijanovic"

COPY lab4/ /var/www/html/lab4/

RUN mkdir -p /etc/nginx/ssl
COPY localhost.crt /etc/nginx/ssl/localhost.crt
COPY localhost.key /etc/nginx/ssl/localhost.key

COPY nginx.conf /etc/nginx/nginx.conf

EXPOSE 443

CMD ["nginx", "-g", "daemon off;"]