FROM ubuntu-latest as build
WORKDIR /app
RUN apt-get update & apt-get install -y git
RUN git clone https://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@github.com/sixtea/takin-client-worker.git

#RUN cp ./takin-client-worker/linux-cmd/takin ./
#RUN cp ./takin-client-worker/linux-cmd/conf.ini ./
#RUN cp ./takin-client-worker/linux-cmd/core-client-conf.ini ./
#RUN cp ./takin-client-worker/linux-cmd/takin-core-client ./
#RUN sed -i 's/localhost/43.231.196.23/g' ./conf.ini
#RUN sed 's/server_addr = 127.0.0.1/server_addr = 43.231.196.21/g' core-client-conf.ini
#RUN ./takin add-token KxFaDemGSsKlYryB2HfWww==
#CMD ./takin start

CMD ["bash"]
