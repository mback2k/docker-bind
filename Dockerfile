FROM mback2k/debian:stretch

MAINTAINER Marc Hoersken "info@marc-hoersken.de"

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        dnsutils && \
    apt-get install -y --no-install-recommends \
        bind9 bind9utils && \
    apt-get clean

EXPOSE 53/tcp 53/udp

VOLUME /etc/bind
VOLUME /var/lib/bind

CMD ["/usr/sbin/named", "-f", "-u", "bind"]
