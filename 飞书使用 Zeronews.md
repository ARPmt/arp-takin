# 在飞书上通过ZeroNews 访问企业内网应用

  企业可在飞书上将 ZeroNews 平台的内网应用，以飞书应用的方法添加到工作台，实现用户通过飞书即在任意位置可访问内网OA/ERP等 应用。 
  
## 如何飞书上使用 ZeroNews 以 HTTPS 方式访问内网OA/ERP等 应用


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

  ### 第四步： 在飞书上添加 ZeroNews 上的应用

  1. 管理员登录 飞书，进入到 工作台 界面，点击 "创建应用"

![image](https://github.com/ARPmt/arp-takin/assets/127104785/eac5871b-c3be-4a1c-995f-160ecea00cda)

 2. 从 创建应用 进入到，开发者后台， 点击 "创建应用"
    
![image](https://github.com/ARPmt/arp-takin/assets/127104785/a8a9a240-ab76-4dce-ae5a-c80af0e763ea)

 3. 点击 "创建企业自建应用"

![image](https://github.com/ARPmt/arp-takin/assets/127104785/841ce311-57f2-4a69-a5ac-8a232ebf98af)

4. 输入 应用名称、 描述 等信息， 确认完成应用创建

![image](https://github.com/ARPmt/arp-takin/assets/127104785/b7a1449e-37e2-4290-b2d9-a8fb3cda3873)

5. 应用创建完成后，自动进入到 "添加应用能力" 界面，在"网页应用" 选项卡下，点击 "添加"

![image](https://github.com/ARPmt/arp-takin/assets/127104785/981dd42a-7749-4949-b08e-9647fd094ef6)

6. 在网页应用配置页面下的 "桌面端主页" ,输入 OA 系统的  ZeroNews 域名地址： https://oatest.test.takin.cc

![image](https://github.com/ARPmt/arp-takin/assets/127104785/9b731996-340f-4f81-85d9-7bf09545dda4)

7. 应用能力添加完成后，可查看OA 网页应用的详情

![image](https://github.com/ARPmt/arp-takin/assets/127104785/d7c5d4b8-e658-4549-a4a5-d7ebe0cad700)

8. 应用创建完成后，再发布应用，在 "版本管理与发布" 页面下，输入应用的版本信息

![image](https://github.com/ARPmt/arp-takin/assets/127104785/bc347c18-418f-43c5-aecd-0e38b8abdb2f)

并确认 应用发布

![image](https://github.com/ARPmt/arp-takin/assets/127104785/ea2894b6-0443-4500-adde-d708eddfb56a)

9. 应用发布后，可查看已经发布可用的应用

![image](https://github.com/ARPmt/arp-takin/assets/127104785/e5058ccb-a759-4c90-a779-0e36b32ca88d)

   




  

  
