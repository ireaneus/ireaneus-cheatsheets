# Dockerfile — real-world examples

## This repo's image: cheat in a container

```dockerfile
FROM python:alpine
LABEL maintainer="bwdave@protonmail.com"

RUN pip install cheat

COPY . /root/.cheat

ENV CHEAT_COLORS=true
ENV CHEAT_COLORSCHEME=light

ENTRYPOINT ["cheat"]
```

Build and run it:

```sh
docker build -t cheat .
docker run --rm cheat tar
```

## Common instructions

| Instruction | What it does                                |
| ----------- | ------------------------------------------- |
| FROM        | base image                                  |
| RUN         | execute a command at build time             |
| COPY        | copy files from build context into image    |
| ENV         | set an environment variable                 |
| WORKDIR     | set working directory for later steps       |
| EXPOSE      | document a listening port                   |
| ENTRYPOINT  | fixed executable for the container          |
| CMD         | default arguments (overridable at run time) |

## Minimal service image

```dockerfile
FROM python:alpine
WORKDIR /app
COPY requirements.txt .
RUN pip install -r requirements.txt
COPY . .
EXPOSE 8080
CMD ["python", "app.py"]
```

## Homelab: small static-site container for the lab wiki

```dockerfile
FROM nginx:alpine
COPY site/ /usr/share/nginx/html/
EXPOSE 80
```

```sh
docker build -t labwiki . && docker run -d -p 8081:80 labwiki
```
