FROM nginx:1.24.0-alpine-slim

LABEL version="1.0.0" description="Empresa openstreetmap" maintainer="Victor Ceschini <victorceschinie@academico.ufs.br>"

RUN rm /etc/nginx/conf.d/default.conf

COPY /etc/nginx/nginx.conf /etc/nginx/nginx.conf

COPY /var/www/html/index.html /var/www/html

EXPOSE 80

CMD [ "nginx", "-g", "daemon:off;"]
