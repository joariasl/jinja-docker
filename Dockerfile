FROM python:3-alpine
LABEL maintainer="Jorge Arias <mail@jorgearias.cl>"

RUN addgroup -g 1000 python \
  && adduser -D -h /home/python -u 1000 -G python python

RUN pip install --upgrade pip \
  && easy_install Jinja2 \
  && pip install Jinja2

USER python

WORKDIR /home/python
