# alpine-dev

A Docker image based on Alpine Linux, intended to be used for development.
Runs indefinitely until you stop it.


## Building

Ensure `$PWD` is the root of this repo, then

```
docker build -f Dockerfile --tag alpine-dev .
```


## Running/Using

### Without SSH Agent Forwarding

Use these commands if you never intend to use SSH agent forwarding.
Run the container with

```
docker run -d --name alpine-dev alpine-dev
```

Get a shell inside the container with the command

```
docker exec -it alpine-dev /bin/bash
```


### With SSH Agent Forwarding

This assumes that the socket used for forwarding (should be at `/tmp/ssh-asdfasdf/agent.12345`
or similar), and the environment variable `SSH_AUTH_SOCK` that points to this file,
are present. Run the container with

```
docker run -d --mount 'type=bind,src=/tmp,dst=/tmp' --name alpine-dev alpine-dev
```

Get a shell inside the container with the command

```
docker exec -it --env SSH_AUTH_SOCK=${SSH_AUTH_SOCK} alpine-dev /bin/bash
```
