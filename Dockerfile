FROM python:alpine
LABEL maintainer="bwdave@protonmail.com"

RUN pip install cheat 

COPY . /root/.cheat

ENV CHEAT_COLORS=true

ENV CHEAT_COLORSCHEME=light

ENTRYPOINT ["cheat"]
