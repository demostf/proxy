#!/usr/bin/env bash

sed -e "s/\${SOURCE}/$HOST/" -e "s/\${TARGET}/$TARGET/" nginx.conf > /etc/nginx/conf.d/$HOST.conf.nokey
sed -e "s/\${SOURCE}/api.$HOST/" -e "s/\${TARGET}/$TARGET/" nginx.conf > /etc/nginx/conf.d/api.$HOST.conf.nokey
sed -e "s/\${SOURCE}/static.$HOST/" -e "s/\${TARGET}/$TARGET/" nginx.conf > /etc/nginx/conf.d/static.$HOST.conf.nokey
