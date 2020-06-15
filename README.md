# reveal.js-docker

>Docker images for [reveal.js]

## Build

```bash
docker build -t nshine/reveal.js-docker:4.0.2
```

## Run

```bash
docker run -p 8080:8080 nshine/reveal.js
```

## Dev Image

The `dev` image variant is for running with hot-reloading.

```bash
docker run -v $(pwd)/index.js:/reveal.js/index.js
```

## 

[reveal.js]:https://github.com/hakimel/reveal.js/
