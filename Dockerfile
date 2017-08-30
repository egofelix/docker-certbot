FROM alpine

MAINTAINER EgoFelix <docker@egofelix.de>

# Install Certbot
RUN apk add --no-cache \
    bash \
	certbot

# Install Entrypoint
COPY ./run.sh /run.sh
RUN chmod +x /run.sh

CMD ["/run.sh"]
