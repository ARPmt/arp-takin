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
    
