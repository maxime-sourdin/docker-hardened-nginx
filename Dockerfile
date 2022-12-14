FROM proxy-docker.sourdin.ovh/nginx:1.23.2-alpine
RUN apk update --no-cache && \
    apk upgrade --no-cache && \
    apk add --no-cache openssl
COPY rootfs /
RUN mkdir /etc/nginx/ssl && \
    chown -R nginx:nginx /var/cache/nginx && \
    chown -R nginx:nginx /var/log/nginx && \
    chown -R nginx:nginx /etc/nginx/conf.d && \
    touch /var/run/nginx.pid && \
    chown -R nginx:nginx /var/run/nginx.pid && \
    rm /etc/nginx/conf.d/default.conf
USER nginx
EXPOSE 8080
ENTRYPOINT \
  nginx -g 'daemon off;'
