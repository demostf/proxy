FROM nginx:1-alpine

RUN apk add --no-cache moreutils bash

COPY entrypoint.sh /docker-entrypoint.d/
COPY nginx.conf /etc/nginx/nginx.conf
COPY 413.html /var/www
COPY sites/* /etc/nginx/conf.d/

ENV API_FASTCGI=api:9000
ENV FRONTEND=frontend
ENV SYNC=sync
ENV MAPS=maps
ENV METRICS=metrics
