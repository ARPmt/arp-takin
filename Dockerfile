FROM centos:7
WORKDIR /app

RUN yum install -y epel-release
RUN yum install -y git
RUN git clone https://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@github.com/sixtea/takin-client-worker.git

RUN cp ./takin-client-worker/linux-cmd/takin ./
RUN cp ./takin-client-worker/linux-cmd/core-client-conf.toml ./ 
RUN cp ./takin-client-worker/linux-cmd/takin-core-client ./

#CMD ./takin start
CMD ["bash"]
