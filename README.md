# Splash Page Docker Instructions

## Build the Docker image

```sh
docker build -t tomauto_splash .
```

## Run the Docker container

```sh
docker run --rm -p 80:80 tomauto_splash
```

# For building for linux

```
   docker buildx build --platform linux/amd64 -t registry.digitalocean.com/disclosureguideregistry/tomauto_splash . --push
```