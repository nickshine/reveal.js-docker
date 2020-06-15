FROM node:12

ARG RELEASE=4.0.2

RUN cd /tmp \
  && curl -sLo reveal.js.tar.gz https://github.com/hakimel/reveal.js/archive/${RELEASE}.tar.gz \
  && tar -xzf reveal.js.tar.gz \
  && mv reveal.js-4.0.2 /reveal.js \
  && npm install \
  && npm cache clean --force \
  && rm /tmp/*.gz

WORKDIR /reveal.js

EXPOSE 8000 35729

CMD ["npm", "start"]
