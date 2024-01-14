#!/usr/bin/env bash

for f in /etc/nginx/conf.d/*.conf
do
     envsubst '${HOST},${API_FASTCGI},${FRONTEND},${SYNC},${MAPS},${METRICS}' < "$f" | sponge "$f"
done

/scripts/start_nginx_certbot.sh
