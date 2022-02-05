FROM jonasal/nginx-certbot
COPY entrypoint.sh site.conf /
COPY nginx.conf /etc/nginx/nginx.conf
COPY 413.html /var/www

CMD ["/bin/bash", "/entrypoint.sh"]
