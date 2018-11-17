FROM certbot/certbot

MAINTAINER EgoFelix <docker@egofelix.de>

# Install Curl
RUN apt-get update && apt-get install curl
