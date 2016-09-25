FROM gliderlabs/alpine:3.4

RUN apk-install dnsmasq bash
COPY data/entrypoint /entrypoint
RUN chmod 755 /entrypoint

ENV DNSMASQ_HOME /mnt/dnsmasq
WORKDIR ${DNSMASQ_HOME}
EXPOSE 53/udp

ENTRYPOINT ["/entrypoint"]
CMD ["-d", "-C", "dnsmasq.conf"]
