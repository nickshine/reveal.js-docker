<p align="center"><img width="500" src="https://i.imgur.com/ijQpv6z.png"></p>

# reveal.js-docker


>Docker images for [reveal.js]

## Run

```bash
docker run -p 8080:8080 nshine/reveal.js
```

## Develop

The `dev` image variant is for running with hot-reloading.

```bash
cd dev
docker-compose up

# or
docker run \
  -v $(pwd)/index.html:/reveal.js/index.html \
  -v $(pwd)/images:/reveal.js/images \
  -p 8000:8000 -p 35729:35729 \
  nshine/reveal.js:dev
```

[reveal.js]:https://github.com/hakimel/reveal.js/
