FROM alpine:310

COPY .docker/scripts/build.sh /opt/build.sh

RUN apk add --no-cache nano bash \
    && /opt/build.sh

CMD ["/bin/bash"]
