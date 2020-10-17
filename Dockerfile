FROM ubuntu:16.04

MAINTAINER Himanshu Pandit "himanshu.pandit@outlook.com" 

RUN apt-get update -y && \
    apt-get install -y python-pip python-dev && \
    apt-get install -y locales locales-all

ENV LC_ALL en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US.UTF-8

# We copy just the requirements.txt first to leverage Docker cache
COPY ./requirements.txt /app/requirements.txt

WORKDIR /app

RUN pip install -r requirements.txt

COPY . /app

ENTRYPOINT [ "python" ]

CMD [ "future_value_web.py" ]
