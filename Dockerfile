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
