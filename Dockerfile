FROM centos:7
WORKDIR /app

RUN yum install -y epel-release
RUN yum install -y git
#RUN git clone https://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@github.com/sixtea/takin-client-worker.git

#RUN cp ./takin-client-worker/linux-cmd/takin ./
#RUN cp ./takin-client-worker/linux-cmd/core-client-conf.toml ./ 
#RUN cp ./takin-client-worker/linux-cmd/takin-core-client ./

#CMD ./takin start
ADD linux-cmd /app
CMD ["bash"]
