FROM jonasal/nginx-certbot:latest-alpine

RUN apk add --no-cache moreutils

COPY entrypoint.sh /
COPY nginx.conf /etc/nginx/nginx.conf
COPY 413.html /var/www
COPY sites/* /etc/nginx/conf.d/

ENV API_FASTCGI=api:9000
ENV FRONTEND=frontend
ENV SYNC=sync
ENV MAPS=maps

CMD ["/bin/bash", "/entrypoint.sh"]
