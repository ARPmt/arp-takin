![image](https://github.com/ARPmt/arp-takin/assets/127104785/164c2cbd-a37d-47f0-938b-17f5ba4b2033)# 通过 ZeroNews以 HTTP/HTTPS 方式访问内网群晖 

  用户在群晖上存储大量的文档、图片、视频等文件，通过Zeronews,用户可在任意位置以HTTP或HTTPS方式公网访问企业内部或家里的群晖管理后台，进行文件、图片、视频等管理、分享

  ## 第一步： 在群晖上运行 ZeroNews

  参考 [群晖上运行Zeronew](doctakin.test.takin.cc)
  
  ## 第二步： 为群晖分配公网可访问的 Zeronews 域名
  
  用户登录 Zeronews 平台， 在 "资源" - "域名" 管理页面，为 群晖 添加 公网域名
  
  生效设备： 选择 群晖上运行的 zeronews 客户端
  
  域名前缀： 如 qunhui 

  ![image](https://github.com/ARPmt/arp-takin/assets/127104785/bfd0499b-a27c-4506-92a8-c3e2d94d2089)

  域名创建完成后，在域名列表中可查看创建好的 域名
  
　![image](https://github.com/ARPmt/arp-takin/assets/127104785/8950988e-5cab-4fe5-bf25-7d45f54996ab)

  域名创建完成后，为群晖创建应用

 ## 第三步：为群晖添加 公网访问应用

 用户在 "应用" 管理页面 添加 群晖管理后台 应用

 ### 添加以 HTTP 方式访问群晖管理后台的应用

添加应用
 
应用名称：如输入 群晖应用

生效设备： 选择 群晖上 zeronews 容器客户端

服务类型： 选择 HTTPS 协议

域名地址： 选择添加完成的 qunhui.test.takin.cc 域名

内网地址： 输入 127.0.0.1

在服务映像下，添加 HTTP 访问服务

协议： 选择 HTTP 协议

内网端口： 输入 群晖管理平台的访问端口号 5000

![image](https://github.com/ARPmt/arp-takin/assets/127104785/027b0527-5ddd-4fe1-8964-6820b5dc0f71)

应用添加完成后，可在应用列表中查看 添加完成的 群晖 应用

![image](https://github.com/ARPmt/arp-takin/assets/127104785/34640510-8c34-4dda-bf3f-5824d9e4b39d)

点击域名URL 地址，自动以 HTTP 方式进入 群晖管理后台

![image](https://github.com/ARPmt/arp-takin/assets/127104785/a15c8809-f2ae-47f0-b0b8-d1ee6794d2f2)

 ### 添加以 HTTPS 方式访问群晖管理后台的应用

 为提高群晖公网访问数据的安全性， zeronews 支持以 HTTPS 访问 群晖管理后台, TLS 证书 由 ZeroNews 自动分配

 用户在 zeronews 平台的 "资源" - "域名" 管理页面

 打开 qunhui.test.takin.cc 域名的 TLS 证书 开关，  ZeroNews 会自动为 qunhui.test.takin.cc  自动分配 TLS 证书

 ![image](https://github.com/ARPmt/arp-takin/assets/127104785/9e4f4799-ef1e-4309-b044-d48ddf89fe79)

 再回到应用管理页面，在上一步的 添加的 群晖应用的详情下。点击 "添加服务"， 

协议： 选择 HTTPS 协议

内网端口： 输入 群晖管理平台的访问端口号 5000

![image](https://github.com/ARPmt/arp-takin/assets/127104785/e5220442-25d8-44a6-a1f4-92da78658d74)

HTTPS 服务添加完成后，可查看 HTTPS 服务

![image](https://github.com/ARPmt/arp-takin/assets/127104785/f14d154d-23b8-4574-967c-e6fda55c0b8c)

点击域名URL 地址，自动以 HTTPS 方式进入 群晖管理后台

![image](https://github.com/ARPmt/arp-takin/assets/127104785/07585739-0dbe-40ee-a2fa-957898075f7a)


 
 


