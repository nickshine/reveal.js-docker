FROM nshine/reveal.js:4.0.2-dev AS builder

FROM nginx:1.19-alpine

ENV SITE=/usr/share/nginx/html

COPY nginx.conf /etc/nginx/
COPY --from=builder /reveal.js $SITE/

RUN deluser nginx \
  && addgroup -g 1000 nginx \
  && adduser -G nginx -u 1000 -D -g "" nginx \
  && touch /var/run/nginx.pid \
  && chown -R nginx:nginx /var/run/nginx.pid /var/cache/nginx $SITE \
  && mv $SITE/demo.html $SITE/index.html

EXPOSE 8080
USER 1000
