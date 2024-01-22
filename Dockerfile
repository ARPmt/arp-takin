FROM centos:7

ENV PATH=/opt/.cmd:$PATH

WORKDIR /app

ADD start.sh /app
ADD linux-cmd /app

RUN chmod +x /app/linux-cmd/takin
RUN chmod +x /app/linux-cmd/takin-core-client
RUN chmod +x /app/start.sh

ENTRYPOINT ["/app/start.sh"]
