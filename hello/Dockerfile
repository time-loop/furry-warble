FROM nginx:latest

RUN true \
  && apt-get -y update \
  && DEBIAN_FRONTEND=noninteractive apt-get -qq install openssl \
  && rm -rf /var/lib/apt/lists/*

RUN true \
  && echo "daemon off;" >> /etc/nginx/nginx.conf

COPY html /usr/share/nginx/html
COPY default.conf /etc/nginx/conf.d/default.conf
COPY entrypoint.sh /

CMD ["bash", "entrypoint.sh"]
