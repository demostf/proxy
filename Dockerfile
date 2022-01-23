FROM jonasal/nginx-certbot
COPY nginx.conf /
COPY entrypoint.sh /
COPY 413.html /var/www

CMD ["/bin/bash", "/entrypoint.sh"]
