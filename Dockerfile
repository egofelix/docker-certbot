FROM alpine

MAINTAINER EgoFelix <docker@egofelix.de>

# Install Certbot
RUN apk add --no-cache \
    bash \
	certbot \
	py2-future \
    py2-certifi \
    py2-urllib3 \
    py2-chardet

# Install Entrypoint
COPY ./run.sh /run.sh
RUN chmod +x /run.sh

CMD ["/run.sh"]
