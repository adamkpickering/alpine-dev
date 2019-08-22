# alpine-dev

A Docker image based on Alpine Linux, intended to be used for development.
Runs indefinitely until you stop it.


## Building

Ensure `$CWD` is the root of this repo, then

```
docker build -f Dockerfile --tag alpine-dev .
```


## Running/Using

Run the container with

```
docker run -d --name alpine-dev alpine-dev
```

Get a shell inside the container with the command

```
docker exec -it alpine-dev /bin/sh
```
