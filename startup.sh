#!/bin/bash

cat >/etc/nginx/conf.d/default.conf <<EOF
server {
    listen       80;
    server_name  localhost;

    location / {

  		proxy_pass          http://$IP:$PORT;
  		proxy_http_version  1.1;

      proxy_set_header Host            \$host;
      proxy_set_header X-Forwarded-For \$remote_addr;
	  }
}
EOF

nginx -g "daemon off;"
