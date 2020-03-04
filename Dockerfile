FROM certbot/certbot

MAINTAINER EgoFelix <docker@egofelix.de>

# Install Bash & Curl
RUN apk add --no-cache \
        bash \
        curl \
        jq
