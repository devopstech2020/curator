FROM alpine:latest
MAINTAINER Hardeep Singh

RUN apk add --update \
    libstdc++ \
    bash \
    --no-cache python3 && \
    python3 -m ensurepip && \
    rm -r /usr/lib/python*/ensurepip && \
    pip3 install --upgrade pip setuptools && \
    pip3 install elasticsearch-curator==4.2.6 && \
    rm -r /root/.cache 



ENTRYPOINT ["/usr/bin/curator"]
