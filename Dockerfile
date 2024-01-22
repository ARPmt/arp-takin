FROM centos:7

ENV PATH=/opt/.cmd:$PATH

WORKDIR /app

ADD start.sh /app
ADD linux-cmd /app
ENTRYPOINT ["/app/start.sh"]
