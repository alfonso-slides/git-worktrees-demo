FROM debian:buster-slim

RUN apt-get update && \
    apt-get install -y make gcc libcmocka0 libcmocka-dev
