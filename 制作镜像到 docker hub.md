制作takin-tc 容器镜像到 docker hub

  ## 构建镜像Dockerfile 文件
takin tc dockerfile:

```
  FROM centos:7
  
  ENV PATH=/opt/.cmd:$PATH
  
  WORKDIR /app
  
  ADD start.sh /app
  ADD linux-cmd /app
  
  RUN chmod +x /app/takin
  RUN chmod +x /app/takin-core-client
  RUN chmod +x /app/start.sh
  
  ENTRYPOINT ["/app/start.sh"]
```

start.sh
    ```
#! /bin/sh

/app/takin add-token $1== 440
/app/takin start

tail -f /dev/null
    ```

## 构建本地takin tc 镜像
在Dockerfile 当前目录下构建镜像

docker build -t takin-tc .   

给生成的docker 镜像 打上用户tag， arp1321 为用户docker仓库的 用户账号ID

docker tag takin-tc arp1321/takin-tc:latest

![image](https://github.com/ARPmt/arp-takin/assets/127104785/37409c23-2ede-4e96-93a9-dd6ad71ebe5f)

## 登录 docker, push 上传镜像
docker login 

后输入用户账号密码

push 上传docker镜像, 上传成功后，在docker hub 页面可正常看到 上传的镜像

docker push arp1321/takin-tc

![image](https://github.com/ARPmt/arp-takin/assets/127104785/5b1b5123-9f8c-40ef-9cdb-54c8d184dcdd)

