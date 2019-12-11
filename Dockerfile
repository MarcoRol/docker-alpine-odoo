FROM alpine:3.10

COPY .docker/patches/python-ldap.patch /opt/python-ldap.patch
COPY .docker/scripts/build.sh /opt/build.sh
COPY .docker/scripts/wkhtmltox.sh /usr/local/bin/wkhtmltoimage

RUN apk add --no-cache nano bash \
    && /opt/build.sh

CMD ["/bin/bash"]
