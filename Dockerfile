FROM gliderlabs/alpine:3.3

RUN apk-install dnsmasq bash
COPY data/entrypoint /entrypoint
RUN chmod 755 /entrypoint

ENV DNSMASQ_HOME /opt/dnsmasq
VOLUME [${DNSMASQ_HOME}]
WORKDIR ${DNSMASQ_HOME}
EXPOSE 53/udp

ENTRYPOINT ["/entrypoint"]
CMD ["-d", "-C", "dnsmasq.conf"]
