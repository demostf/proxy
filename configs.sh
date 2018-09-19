#!/usr/bin/env bash

sed -e "s/\${SOURCE}/$HOST/" -e "s/\${TARGET}/$TARGET/" nginx.conf > /etc/nginx/conf.d/$HOST.conf
sed -e "s/\${SOURCE}/api.$HOST/" -e "s/\${TARGET}/$TARGET/" nginx.conf > /etc/nginx/conf.d/api.$HOST.conf
sed -e "s/\${SOURCE}/static.$HOST/" -e "s/\${TARGET}/$TARGET/" nginx.conf > /etc/nginx/conf.d/static.$HOST.conf
sed -e "s/\${SOURCE}/sync.$HOST/" -e "s/\${TARGET}/$TARGET/" nginx.conf > /etc/nginx/conf.d/sync.$HOST.conf

. /scripts/util.sh

auto_enable_configs
echo "waiting a bit"
sleep 5
/scripts/run_certbot.sh

nginx -s reload
