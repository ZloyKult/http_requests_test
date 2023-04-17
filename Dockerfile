# DESCRIPTION: simple html page to generate html requests
FROM nginx:alpine
MAINTAINER Dmitriy Fedulov "ZloyKult@outlook.com"
RUN mkdir /var/www && chown -R nginx:nginx /var/www && rm -rf /etc/nginx/conf.d/*
COPY ./front.conf /etc/nginx/conf.d/
COPY ./index.html /var/www/
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]

