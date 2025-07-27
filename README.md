# Splash Page Docker Instructions

## Build the Docker image

```sh
docker build -t splash-nginx .
```

## Run the Docker container

```sh
docker run --rm -p 8080:80 splash-nginx
```

Visit http://localhost:8080 to view your splash page.

Let me know if you need any further customization! 