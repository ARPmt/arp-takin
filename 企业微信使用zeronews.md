# 在企业微信上通过ZeroNews 访问企业内网应用

  企业微信作为一个集沟通、办公一体的IM软件，企业可在企业微信上将 ZeroNews 平台上添加的内网应用，以企业微信应用的方法添加到工作台，实现用户通过企业微信即在任意位置可访问内网OA/ERP等 应用。 
  
## 如何企业微信上使用 ZeroNews 以 HTTPS 方式访问内网OA/ERP等 应用

  企业在Linux 服务器上部署 OA系统，看如何通过 ZeroNews 通过互联网访问 OA 系统

  ### 第一步： 运行 ZeroNews 客户端
  
  在运行 ZeroNews 客户端之前，您需要在 ZeroNews 系统平台上，先为 客户端设备 生成 设备身份认证的 Token
  
  Token 生成 完成后，根据运行 客户端设备的系统类型，下载对应 ZeroNews 客户端程序并运行，
  
  ZeroNews 客户端运行成功后，在 ZeroNews 系统平台上可显示在线的 客户端设备，设备名称默认以运行客户端的主机系统名称作为设备的名称。
  
  ZeroNews 客户端各系统部署运行参考下面连接：
  
  windows 运行 ZeroNews 客户端
  
  linux 运行 ZeroNews 客户端
  
  macos 运行 ZeroNews 客户端
  
  docker 运行 ZeroNews 客户端
  
  ### 第二步：为内网 OA、OA测试站点添加域名
  
  ZeroNews 客户端成功上线后，用户须在 ZeroNews 系统平台的 "资源" - "域名" 管理页面 为每一个内网站点分配全球可访问的 公网域名
  
  如为 OA 系统分配的域名地址为： zerooa.takin.cc
  
  在 "资源" - "域名" 管理页面的域名列表中，为 zerooa.takin.cc 域名开启 "TLS证书" 特性
   
  ### 第三步： 为内网 OA 系统站点添加应用
  
  在 "应用" 管理页面，添加 OA测试站点 应用
  
  应用名称： 如输入 oatest

  生效设备： 选择 zeronews 客户端

  应用域名： 选择 zerooa.takin.cc 域名

  内网地址： 默认为 127.0.0.1， 表示为当前运行的zeronew客户端的主机上的 OA 系统服务
  
  添加 内网 OA 系统的服务映射：
  
  协议： 选择 HTTPS 协议
  
  内网端口： 输入 OA 系统的端口号， 默认服务端口为 80
  
  oa 应用 创建完成后，在应用列表中可查看创建好的 zerooa 应用

  ### 第四步： 在企业微信上添加 ZeroNews 上的应用

  企业微信管理员在企业微信后台的 "企业应用" - "应用" 界面下， 点击 "创建应用"，将 内网OA系统添加进来

![image](https://github.com/ARPmt/arp-takin/assets/127104785/ec216c83-28b6-4bbb-a6e7-4cfa112165c9)

  输入 应用 名称、描述信息

![image](https://github.com/ARPmt/arp-takin/assets/127104785/2403406f-b5dc-4cfb-b250-0336700d1047)

  设置应用可见的用户范围

![image](https://github.com/ARPmt/arp-takin/assets/127104785/a5b819c7-b32f-40ef-b28e-32edab728e30)

  点击 "应用主页" 的 "设置"， 设置应用的域名站点， 选择 "网页"， 然后 

![image](https://github.com/ARPmt/arp-takin/assets/127104785/50dd35b5-ceda-41d4-ac5a-df6548a7bd30)

  输入 域名地址： zerooa.takin.cc
  
![image](https://github.com/ARPmt/arp-takin/assets/127104785/05c7aaf2-d4d8-4da4-996f-63d50bf48957)

  应用添加 完成后，在 应用列表中 可查看添加好的应用

![image](https://github.com/ARPmt/arp-takin/assets/127104785/ebf6bcaa-1ac5-4494-9adb-9f8a9e9797fc)
