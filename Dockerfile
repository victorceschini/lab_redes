FROM nginx:1.24.0-alpine-slim

LABEL version="1.0.0" description="Empresa openstreetmap" maintainer="Victor Ceschini <victorceschinie@academico.ufs.br>"

RUN rm /etc/nginx/conf.d/default.con´f

COPY nginx.conf /etc/nginx/nginx.conf

COPY index.html /var/www/html

EXPOSE 61088

CMD [ "nginx", "-g", "daemon:off;"]
