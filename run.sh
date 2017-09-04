#!/usr/bin/env bash

if [ -z ${renew+x} ]; then

  if [ -z ${email+x} ]; then echo "Fatal: administrator email address must be specified with the environment variable named 'email'"; exit 1; fi
  if [ -z ${domains+x} ]; then echo "Fatal: domains must be specified with the environment variable named 'domains'"; exit 1; fi

  IFS=',' read -ra ADDR <<< "$domains"
  for domain in "${ADDR[@]}"; do
    certbot certonly --verbose --noninteractive --quiet --standalone --standalone-supported-challenges http-01 --agree-tos --email="${email}" -d "${domain}"
  done
  
else

  certbot renew
  
fi
