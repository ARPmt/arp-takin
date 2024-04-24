# 在ZeroNews 中以HTTPS 方式添加 Truenas 应用

  在truenas上，用户可通过Zeronews将 truenas 的管理平台地址以HTTPS 的方式映射到互联网，实现用户在任意位置都可通过公网以HTTPS 放松安全访问 内网 Truenas，从而进行文件、图片、视频等管理、分享

  ## 第一步： 在 TrueNas 上运行 ZeroNews

  参考 [TrueNas上运行Zeronew](doctakin.test.takin.cc)
  
  ## 第二步： 为 TruNas分配公网可访问的 Zeronews 域名
  
  用户登录 Zeronews 平台， 在 "资源" - "域名" 管理页面，为 TrueNas 添加 公网域名
  
  生效设备： 选择 TrueNas 上运行的 zeronews 客户端
  
  域名前缀： 如 truenas 

  ![image](https://github.com/ARPmt/arp-takin/assets/127104785/20892b88-46b1-4c34-bf5a-bdbc3fad23d4)

  域名创建完成后， 开启域名的 TLS 证书开关，由ZeroNews 自动为 域名 truenas.test,takin.cc 分配 TLS 证书
  
  在域名列表中可查看创建好的 域名
  
  ![image](https://github.com/ARPmt/arp-takin/assets/127104785/7d303aae-5ba2-4748-bc43-76858453e60b)

  域名创建完成后，为 TrueNas 创建应用

 ## 第三步：为 TrueNas 添加 HTTPS 放松的公网访问应用

 用户在 "应用" 管理页面 添加 TrueNas管理后台 应用

添加应用
 
应用名称：如输入 truenas

生效设备： 选择 truenas 上 zeronews 容器客户端

服务类型： 选择 HTTPS 协议

域名地址： 选择添加完成的 truenas.test.takin.cc 域名

内网地址： 输入 truenas 的IP地址， 172.16.2.102

在服务映像下，添加 HTTPS 访问服务

协议： 选择 HTTPS 协议

内网端口： 输入 truenas 管理平台的访问端口号 80

![image](https://github.com/ARPmt/arp-takin/assets/127104785/f4566fda-afa3-4e0d-90db-1caa6755b481)

应用添加完成后，可在应用列表中查看 添加完成的 truenas 应用

![image](https://github.com/ARPmt/arp-takin/assets/127104785/ef5f829d-b10e-4123-903c-df680323f01d)

## 第四步：修改 Truenas 的 nginx.conf 配置，改为 https

用户在内网通过 truenas 的IP地址登录 truenas 管理后台，点击 "system" 菜单的 "shell" ，进入到 truenas 的 命令行控制台界面

![image](https://github.com/ARPmt/arp-takin/assets/127104785/25fb4295-781f-4580-9730-06af2c07f27f)

编辑修改 nginx 的 /etc/nginx/nginx.conf 文件， 将 location / 下的 $scheme 修改为 https

修改命令需要 root 权限,修改内容如下： 

sudo vim /etc/nginx/nginx.conf

```
原有配置
location / {
            allow all;
            rewrite ^.* $scheme://$http_host/ui/ redirect;
        }

修改后的配置
location / {
            allow all;
            rewrite ^.* https://$http_host/ui/ redirect;
        }
```

修改完成后，重启 nginx 服务

```
sudo /etc/init.d/nginx restart
```

## 第五步 用户在浏览器中以 HTTPS 方式访问 truenas 应用

用户打开浏览器，输入truenas 的域名地址 ： https://truenas.test.takin.cc 

![image](https://github.com/ARPmt/arp-takin/assets/127104785/4659f8d0-5d2b-4573-8231-7a929b9509cd)


