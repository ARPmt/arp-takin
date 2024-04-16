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

  <img width="1230" alt="企业微信截图_e9ebf322-bf65-4c4c-96b1-00829ad24025" src="https://github.com/ARPmt/arp-takin/assets/127104785/89578dd5-3016-42e1-9dd0-6fbe99dbd50c">

  输入 应用 名称、描述信息

  <img width="1120" alt="企业微信截图_474954fd-b840-4c0d-a687-d6565d732894" src="https://github.com/ARPmt/arp-takin/assets/127104785/3828734e-2d7f-4358-99f4-e9ae0fc53646">

  设置应用可见的用户范围

  <img width="1304" alt="企业微信截图_ba3253df-4791-405e-ba22-c4ef8434350e" src="https://github.com/ARPmt/arp-takin/assets/127104785/45b196d4-f09d-428a-844b-3aa68c8a6b5b">

  点击 "应用主页" 的 "设置"， 设置应用的域名站点， 选择 "网页"， 然后 输入 域名地址： zerooa.takin.cc
  
  <img width="710" alt="企业微信截图_596be15e-1659-46a6-b877-e6bd4d8178dc" src="https://github.com/ARPmt/arp-takin/assets/127104785/fcc865e5-dcff-4c08-a282-1dda9a50cf18">

  应用添加 完成后，在 应用列表中 可查看添加好的应用

  <img width="793" alt="企业微信截图_64f19007-f193-41ee-bf00-6487b133bf7c" src="https://github.com/ARPmt/arp-takin/assets/127104785/eac86a88-6b20-4d42-832c-15a556519be7">
