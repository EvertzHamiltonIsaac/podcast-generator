FROM ubuntu:latest

RUN apt-get update && apt-get install -y \
    git

#RUN pip3 install PyYAML

COPY create_feed.py /usr/bin/feed.py

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
