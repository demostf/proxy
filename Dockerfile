FROM staticfloat/nginx-certbot
COPY nginx.conf /
COPY configs.sh /scripts/startup/
