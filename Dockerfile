FROM alpine:latest
LABEL maintainer='h-makihara<macky0325@gmail.com>'

#ARG VERSION
ARG http_proxy=$http_proxy
ARG https_proxy=$https_proxy

WORKDIR /app

# system
RUN apk update \
    && apk upgrade \
    && apk add -U --no-cache perl openssl \
    && apk add --no-cache --virtual .system-tools \
                                    git \
                                    curl \
                                    bash \
                                    build-base 
RUN apk update \
    && apk upgrade \
    && apk add --no-cache --virtual .build-deps \
                                    make \
                                    python3 \
                                    py3-pip \
                                    linux-headers \
                                    gcc musl-dev \
                                    python3-dev

RUN pip3 install --upgrade pip \
    && pip3 install flask \
    && pip3 install flask_restful \
    && pip3 install jsonify
