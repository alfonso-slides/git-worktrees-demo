FROM debian:buster-slim

RUN apt-get update && \
    apt-get install -y make gcc libcmocka0 libcmocka-dev && apt-get clean && \
    rm -rf /var/cache/apt/archives/* && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* && \
    truncate -s 0 /var/log/*log
