FROM python:alpine

RUN pip install cheat 

COPY . /root/.cheat

ENV CHEAT_COLORS=true

ENTRYPOINT ["cheat"]
