# takin 文档

# 什么是takin
  takin边缘云系统 是一个统一应用安全访问管理平台，无论您的web、tcp/udp应用部署在企业内网服务器、家中的服务器、数据中心内部、公有云及其他任何位置，通过takin，用户无需安装vpn、代理等网络工具，更不用更改现有网络环境，即可浏览器或应用工具基于互联网安全、高速的访问内网应用

  takin 作为跨平台的、独立与操作系统环境、可独立运行的执行程序，没有任何系统软件包依赖，用户下载一键启动，支持 windows/macos/linux等x86、ARM 等平台操作系统.

  takin 为用户提供统一的应用管理平台，在应用管理平台内，用户可以很方便的管理公网域名、固定端口、可访问的内网应用及takin 客户端，并可实时监控客户端、应用的运行状态

# takin 是怎么上线工作

# takin 快速上线

# takin 权益模式

  takin 采用灵活license 权益收费模式，按license数量收取费用，区别于传统的套餐打包的模式，用户可根据实际业务模式按需订购，即用即订购，不用提前购买，用户可更好的规划takin用途，帮助用户节省使用成本，而无需担心额外的消费支出。

  1 个 takin license 权益包含以下内容 ：
  ```
    * 包含1G国内通用流量、
    * 1个HTTP域名
    * 1个HTTPS 证书
    * 一个TCP或UDP固定端口
```
  用户可按量、按月、按年订购，在license 权益有效期内，域名跟固定端口可任意创建、销毁、重建，没有任何限制， 
  
  takin 按用户的不同分个人版权益，企业版权益两大类，个人用户只能购买个人版权益类型，企业用户只能购买企业版权益类型
  
  个人版权益与企业版权益主要内容如下：
  
  个人版权益：
  ```
    * 最大支持64 个License
    * 最大支持32个takin客户端
    * HTTP应用支持
    * HTTPS应用支持
    * TCP应用支持
    * 文件分享
    * 单个服务最大 10Mbps 带宽
    * 并发连接数 100
    * 多线机房线路
    * 灾备链路支持
    * 灾备服务器支持
```
  企业版权益
  ```
    * License数量无限制
    * takin客户端数量无限制
    * HTTP应用支持
    * HTTPS应用支持
    * TCP应用支持
    * UDP应用支持
    * 文件分享
    * 单个服务最大 100Mbps 带宽
    * 并发连接数 1000
    * BGP机房线路
    * 灾备链路支持
    * 灾备服务器支持
    * 可定制专属服务器
    * 可定制专属IP
    * 可定制专属带宽
 ``` 
  
# takin 安装运行

  ##  1. 在windows 系统上运行
  takin 为用户提供兼容 win7/win10/win11/win server 2012/win server 2016 等windows 系统的takin客户端，用户直接下载使用

  ### 第一步：生成takin客户端所需的token
  用户登录takin平台，在设备菜单的token页面生成token, token 生成完后，复制生成好的token 备用
  
  ![image](https://github.com/ARPmt/arp-takin/assets/127104785/23145634-c3f0-4626-bc90-a14a2386dd48)

  ### 第二步：下载takin 
  创建takin 的下载运行文件夹，如  d:\\takin
  
  在takin 官网的 客户端下载页面，下载takin.exe 客户端到用户指定的目录下

  ### 第三步：下载takin 的安装运行文件夹添加到系统环境变量中
  以win10 系统 为列，将 takin 运行文件夹添加到系统环境变量中
  
  右键 "我的电脑" -> 点击 "属性" ->  打开 "系统"界面
  
  ![image](https://github.com/ARPmt/arp-takin/assets/127104785/6e040705-332e-4b2a-a5e2-9c2e0e4b1073)
  
  在"系统"界面 -> 点击 "系统保护" -> 打开 "系统属性"界面 -> 点击 "环境变量"
  
  ![image](https://github.com/ARPmt/arp-takin/assets/127104785/93c321b5-3cde-4df6-bd5d-f90cce081134)

  
  在 "环境变量" 界面双击 "Path" -> 
  
  ![image](https://github.com/ARPmt/arp-takin/assets/127104785/e57d52b9-3e6e-448a-9a5d-ffd7250e545e)
  
  然后 点击 "新建"，将 takin 的运行文件夹 添加到环境变量中，再点击 "确定" 完成添加系统环境变量操作
  
  ![image](https://github.com/ARPmt/arp-takin/assets/127104785/dfc6d8c3-3bde-46ae-a78c-4f72856acb3d)


  ### 第四步：在windows 的DOS 界面下 完成takin 安装并进行认证并设置区域
  右键电脑屏幕左下方的 系统图标，点击 "运行"
  
  ![image](https://github.com/ARPmt/arp-takin/assets/127104785/78152f04-4375-4c1e-8f06-3aa1a6359597)
  
  在 "运行" 的输入框中，输入 "cmd" ，然后回车
  
  ![image](https://github.com/ARPmt/arp-takin/assets/127104785/e550e19a-07cc-4a97-9fea-335eb740dd76)

  进入到 windows 的 DOS 命令行界面
  
  ![image](https://github.com/ARPmt/arp-takin/assets/127104785/6e0202b6-b4db-45d1-839d-3cfa34cd4bd9)

  运行 token 认证
  ```
   takin.exe set-token [token]
  ```
  ![image](https://github.com/ARPmt/arp-takin/assets/127104785/2bc26e04-8899-4cdf-822b-b4e91ab02b2c)


  设置 网络区域ID
  ```
   takin.exe set-area [网络区域ID]
  ```
  ![image](https://github.com/ARPmt/arp-takin/assets/127104785/536df602-c273-47ed-872b-59af2511ddc9)

  启动 takin 
  ```
   takin.exe start
  ```

  ### takin 启动后，在takin 平台可正常显示takin 设备已上线
  ![image](https://github.com/ARPmt/arp-takin/assets/127104785/5ce5bd08-1f79-48e8-ab1f-3ba12ad42503)

  接下来，您可以在takin 平台生成域名及创建应用服务，完成应用访问

  ##  2. linux 系统上运行
  takin 支持在 centos/ubuntu/debian 等多版本的x86 and ARM 等通用linux 系统平台，用户可直接在HTTP/HTTPS/TCP应用服务器上下载运行或在应用所在内部网络中linux 服务器中运行，实现用户通过浏览器或应用工具公网问内网应用，无需借助任何代理或vpn组件；
  
  takin 为用户提供一键式的安装脚本，脚本自动适配linux系统各版本，帮忙用户快速运行takin

  ### 第一步：生成takin客户端所需的token
  用户登录takin平台，在设备菜单的token页面生成token, token 生成完后，复制生成好的token 备用
  ![image](https://github.com/ARPmt/arp-takin/assets/127104785/23145634-c3f0-4626-bc90-a14a2386dd48)

  ### 第二步：下载takin 安装脚本
  ```
  curl -o install.sh https://tailscale.com/install.sh && chmod +x install.sh
  ```

  ### 第三步：takin 安装并进行认证并设置区域
  脚本支持在运行安装的时候，传入token认证码及网络区域ID，也支持先安装takin,在单独进行token 认证及区域配置；

  takin 网络区域一经设置后，不能更改，用户可根据安装takin 服务器的位置自行选择 takin 网络区域

  a: 在脚本运行安装时，传入token认证码及网络区域ID 
  在脚本下载目录下，执行安装命令
  ```
  sh install.sh  [token 认证码] [网络区域ID]
  ```
  b: 先安装takin，再执行token认证码及网络区域ID 

  脚本安装takin 
  ```
   sh install.sh install
  ```

  执行 token 认证
  ```
   takin set-token [token]
  ```

  设置 网络区域ID
  ```
   takin set-area [网络区域ID]
  ```

  takin 设置开机启动
  ```
   systemctl enable takin
   systemctl start start
  ```

  ### takin 启动后，在takin 平台可正常显示takin 设备已上线
  ![image](https://github.com/ARPmt/arp-takin/assets/127104785/5ce5bd08-1f79-48e8-ab1f-3ba12ad42503)

  接下来，您可以在takin 平台生成域名及创建应用服务，完成应用访问

  ##  3. macos 系统上运行
  takin 为macos 用户提供免安装、一键下载运行的客户端，帮助用户实现快速开发、测试

  ### 第一步：生成takin客户端所需的token
  用户登录takin平台，在设备菜单的token页面生成token, token 生成完后，复制生成好的token 备用
  ![image](https://github.com/ARPmt/arp-takin/assets/127104785/23145634-c3f0-4626-bc90-a14a2386dd48)

  ### 第二步：下载takin macos 客户端
  打开macos 终端CLI 界面，输入下载客户端命令
  ```
  sudo curl -o /usr/local/bin/takin  http://43.231.196.26:9000/core/takin && chmod +x  /usr/local/bin/takin
  ```

  ### 第三步：takin 进行认证并设置区域
  在终端CLI界面，对takin 客户端进行token认证及网络区域设置
  执行 token 认证
  ```
   takin set-token [token]
  ```

  设置 网络区域ID
  ```
   takin set-area [网络区域ID]
  ```

  takin 启动
  ```
   takin start
  ```

  ### takin 启动后，在takin 平台可正常显示takin 设备已上线
  ![image](https://github.com/ARPmt/arp-takin/assets/127104785/5ce5bd08-1f79-48e8-ab1f-3ba12ad42503)

  接下来，您可以在takin 平台生成域名及创建应用服务，完成应用访问
  
  ##  4. Docker 中运行
  takin支持docker 运行部署，为用户提供可公用的 takin docker 镜像，已更好的与容器内应用对接，并简化takin 安装运行；

  ### 第一步：生成takin客户端所需的token
  用户登录takin平台，在设备菜单的token页面生成token, token 生成完后，复制生成好的token 备用
  ![image](https://github.com/ARPmt/arp-takin/assets/127104785/23145634-c3f0-4626-bc90-a14a2386dd48)

  ### 第二步：下载takin docker 镜像
  ```
  docker pull takin/takin:latest
  ```

  ### 第三步：从takin 镜像启动takin 容器，并传入 token 认证码及网络区域ID
  
  启动takin，传入 token 认证码及网络区域ID
 
  ```
  docker run -itd --name takin takin:latest  [token 认证码] [网络区域ID]
  ```

  ### takin 容器启动后，在takin 平台可正常显示takin 设备已上线
  ![image](https://github.com/ARPmt/arp-takin/assets/127104785/5ce5bd08-1f79-48e8-ab1f-3ba12ad42503)

  接下来，您可以在takin 平台生成域名及创建应用服务，完成应用访问

  ##  openwrt 上运行
  
# takin 平台用户手册
  ## 用户中心
  ## 设备管理
  ## 资源管理
  ## 用户应用

# 典型应用

## takin 在 NAS 上的应用

### 在群晖上 运行 takin 

  takin 支持在群晖上以docker 容器方式运行takin,代理 NAS 管理后台及NAS 上额其他业务系统

  #### 第一步： 在群晖上安装 docker 套件

  打开群晖管理后台，在后台界面在点击 "套件中心" 进入到 "套件中心" 管理界面，所搜 docker 点击 安装套件
  
  ![image](https://github.com/ARPmt/arp-takin/assets/127104785/c9622168-e9f9-43ba-9a20-8c0665605ae2)

  docker 套件安装完成后，在 套件中心 的已安装应用界面，可查看已经安装完成的 docker 
  
  ![image](https://github.com/ARPmt/arp-takin/assets/127104785/421a27ff-9850-4fd3-9bf8-e9b731972eaf)

  #### 第二步：下载 takin 的docker 镜像

  进入到 docker 应用界面， 点击 "映像" 进入到 "映像"管理界面， 点击"新增", 选择 "从URL添加"， 输入 takin 镜像地址,点击"确定"等待完成taikin 下载
  takin docker 镜像地址为： zeronews/zeronews

  ![image](https://github.com/ARPmt/arp-takin/assets/127104785/df108515-3fee-44dd-a069-6bf87d8d9792)

  下载完成后，在镜像页面可以查看已下载成功的 takin 镜像
  
  ![image](https://github.com/ARPmt/arp-takin/assets/127104785/0c3d63ff-abbf-4799-a2e9-d8420929ef2e)


  #### 第三步：生成 takin 的认证token
  
  用户登录takin平台，在设备菜单的token页面生成token, token 生成完后，复制生成好的token 备用
  
  ![image](https://github.com/ARPmt/arp-takin/assets/127104785/23145634-c3f0-4626-bc90-a14a2386dd48)

  
  #### 第四步：创建 taKin 容器，并启动

  在 "容器" 菜单下，点击 "新增" 按钮，开始进行 takin 容器创建
  
  ![image](https://github.com/ARPmt/arp-takin/assets/127104785/e5ee0b15-fd48-4efe-892f-9cfc5924a537)

  选择 "takin 镜像"， 点击"下一步"
  
  ![image](https://github.com/ARPmt/arp-takin/assets/127104785/0b89a2ce-9fb9-4b2b-9a40-830f0b2bf0b4)

  在"网络" 设置页面，选择 "选择与 Docker Host相同的网络"， 再 "点击下一步"

  ![image](https://github.com/ARPmt/arp-takin/assets/127104785/c24cfa80-0773-40af-a3ac-034daeb901c3)

  在 "常规设置" 页面，勾选 "启用自动重新启动"，然后 点击 "高级设置" 进入到高级设置界面
  
  ![image](https://github.com/ARPmt/arp-takin/assets/127104785/37c0ee2c-6d05-4f15-8d99-0777ec5ae303)

  在 "高级设置" 界面， 点击 "执行命令"，在 "命令" 输入框中，输入 token 及 网络区域ID，token 与 网络区域ID通过空格分隔
  
  token与网络区域ID 输入完成后，点击 "保存"， 回到"常规设置"页面，并点击 "下一步"

  ![image](https://github.com/ARPmt/arp-takin/assets/127104785/3cd5ce72-36ec-468c-b5ab-e8a9c092d8ca)

  在 "存储空间设置" 界面，点击 "下一步"
  
  ![image](https://github.com/ARPmt/arp-takin/assets/127104785/4735479b-017d-4c82-b14e-10d6a478b3f1)


  最后在 "摘要" 界面，确认token 与 网络区域ID 无误后，点击 "完成" 按钮，完成takin 容器创建
  
  ![image](https://github.com/ARPmt/arp-takin/assets/127104785/5651a14a-3b35-4c47-a481-ee70b5859a08)

  在 "容器" 界面，可以查看 已经创建完成，在运行的 takin 容器
  
  ![image](https://github.com/ARPmt/arp-takin/assets/127104785/2e028dae-42af-4150-89e5-739171a48136)

  在takin 平台可正常显示takin 容器设备已上线
  
  ![image](https://github.com/ARPmt/arp-takin/assets/127104785/5ce5bd08-1f79-48e8-ab1f-3ba12ad42503)

  
### 在True NAS 上 运行 takin 

  takin 支持在 True NAS 上以docker 容器方式运行takin,代理 NAS 管理后台及NAS 上额其他业务系统

  #### 第一步：生成 takin 的认证token
  
  用户登录takin平台，在设备菜单的token页面生成token, token 生成完后，复制生成好的token 备用
  
  ![image](https://github.com/ARPmt/arp-takin/assets/127104785/23145634-c3f0-4626-bc90-a14a2386dd48)


  #### 第二步： 在 true nas 上 创建 takin 容器

  登录True NAS管理后台，点击"应用" 进入到 docker 应用管理界面，点击 "新增应用程序" 进入到 "新增应用程序" 界面

  ![image](https://github.com/ARPmt/arp-takin/assets/127104785/2072c1bd-c482-4f6e-9e76-a9a509031cd2)


  在  "新增应用程序" 界面， 点击 "Custom App"， 进入到用户自定义  takin 应用安装
  
  ![image](https://github.com/ARPmt/arp-takin/assets/127104785/50251017-d1d0-40a8-9b34-ca014b2b7481)

  在 "安装 Custom App" 界面，用户输入 takin 容器名称， 镜像地址
  
  在 "Application name" 选项中，输入应用名称： takin

  在 "容器镜像" 选项的 "Image repository" 中输入takin镜像地址：  zeronews/zeronews 

  在 "Image Pull Policy" 镜像拉取策略选择： Always pull image even if present on host
     
  ![image](https://github.com/ARPmt/arp-takin/assets/127104785/b7f96421-16da-4981-ae0c-f8788519635b)


  在 "Container Entrypoint" 选项中，添加两个 args， 第一个 args 输入 token ，第二个 args 输入网络区域ID 
  
  如 token为 B6uzYb0SSAq068QKC8wMXA， 网络区域ID 为 440
  
  ![image](https://github.com/ARPmt/arp-takin/assets/127104785/a6d6be60-2fb4-4011-9b72-691ca20450d5)


  拉到页面最下面， 点击 "安装" 按钮，等待一会，完成 takin 容器 安装

  ![image](https://github.com/ARPmt/arp-takin/assets/127104785/c419993b-132b-4b1e-8f93-db9c3e1a08eb)


  
  在 "应用" 界面，可以查看 已经创建完成，在运行的 takin 容器
  
  ![image](https://github.com/ARPmt/arp-takin/assets/127104785/2e028dae-42af-4150-89e5-739171a48136)

  在takin 平台可正常显示takin 容器设备已上线
  
  ![image](https://github.com/ARPmt/arp-takin/assets/127104785/5ce5bd08-1f79-48e8-ab1f-3ba12ad42503)

  
### 在 NAS 通过portainer方式 运行 takin 

  在群晖为例，引导用户安装 portainer，进而以容器方式运行 takin

  portniner 容器镜像地址: portainer/portainer-ce

  #### 第一步： 在群晖上安装 docker 套件

  打开群晖管理后台，在后台界面在点击 "套件中心" 进入到 "套件中心" 管理界面，所搜 docker 点击 安装套件
  
  ![image](https://github.com/ARPmt/arp-takin/assets/127104785/c9622168-e9f9-43ba-9a20-8c0665605ae2)

  docker 套件安装完成后，在 套件中心 的已安装应用界面，可查看已经安装完成的 docker 
  
  ![image](https://github.com/ARPmt/arp-takin/assets/127104785/421a27ff-9850-4fd3-9bf8-e9b731972eaf)

  #### 第二步: 开启群晖 SSH
  点击进入到 "控制面板" 界面，点击进入到 "终端机和SNMP"
  ![image](https://github.com/ARPmt/arp-takin/assets/127104785/f5dba9d3-120c-43a6-84fb-01c1ec1e484a)

  勾选 "启用SSH功能"， 
  ![image](https://github.com/ARPmt/arp-takin/assets/127104785/62378590-9f03-4fc8-8214-9d123832e65c)

  #### 第三步： SSH到群晖 CLI控制台，创建 portainer 容器

  通过ssh 工具 远程连接 群晖
  
  通过 sudo 管理员权限创建 portainer 容器，并符加随docker 启动而启动
  
  sudo docker run -d --name=portainer --restart=always --priviledged=true -p 9000:9000 -v /var/run/docker.sock:/var/run/docker.sock portainer/portainer-ce:latest

  portainer 容器运行正常后，可在 群晖的docker 套件中查看在运行的 portainer 容器

  ![image](https://github.com/ARPmt/arp-takin/assets/127104785/d0a0f1d3-debc-4c8d-94a9-6137138f474d)

  #### 第四部： 设置portainer

  浏览器中输入 portainer 的管理后台， 地址为 http://群晖IP:9000
  
  设置 密码， 账号为 admin
  
  ![image](https://github.com/ARPmt/arp-takin/assets/127104785/534b739e-fce7-47d0-8fa9-9197010619f9)

  #### 第五步：生成 takin 的认证token
  
  用户登录takin平台，在设备菜单的token页面生成token, token 生成完后，复制生成好的token 备用
  
  ![image](https://github.com/ARPmt/arp-takin/assets/127104785/23145634-c3f0-4626-bc90-a14a2386dd48)

  #### 第六步： 在portainer 中运行 takin 容器

  登录 portainer 后台后，点击 "Containers"， 进入到 容器管理界面

  ![image](https://github.com/ARPmt/arp-takin/assets/127104785/04803eb5-3c66-426f-a8cc-dcb3f0955598)

  在 "Container" 页面右上角 点击 "Add container" 添加 容器

  输入 容器名称 ： takin
  
  image 地址: zeronews/zeronews:latest

  ![image](https://github.com/ARPmt/arp-takin/assets/127104785/cbffa552-a51b-4831-99ef-923292435e3a)

  在 "Advanced container settings" 的 "Command & logging" 的选项中，将 token/网络区域ID 输入到 Command 的文本框中，空格分隔
  
  ![image](https://github.com/ARPmt/arp-takin/assets/127104785/af12dc90-103c-4f3e-985e-7be63d161da2)

  最后 点击 "deploy the container" 按钮，完成 takin 容器安装

  ![image](https://github.com/ARPmt/arp-takin/assets/127104785/7bee9e11-fdbd-4e12-b9f2-678a66e99e30)

  takin 容器创建完成后，在容器管理界面，可看到正常运行的takin 容器

  ![image](https://github.com/ARPmt/arp-takin/assets/127104785/e8d2a4a3-3c64-4fe8-a927-a76387fa26f0)

  用户登录takin 平台， 可正常显示takin 容器设备已上线
  
  ![image](https://github.com/ARPmt/arp-takin/assets/127104785/5ce5bd08-1f79-48e8-ab1f-3ba12ad42503)



## 利用 takin 实现 nextcloud 私有网盘公网访问 

本案例通过在 centos/nas 上通过容器部署 nextcloud 私有网盘，并结合takin 实现nextcloud 公网访问

### 第一步： 在centos7 安装 nextcloud 容器，映射 5757 端口

为nextcloud 创建 配置文件本地目录, 如：
```
mkdir -p /opt/nextcloud/html/config
```
启动 nextcloud 容器

映射 5757 端口， 并映射 配置文件目录
```
docker run -d --restart=always --name nextcloud -p 5757:80 -v /opt/nextcloud/html/config:/var/www/html/config  nextcloud:latest
```
等待容器启动成功，可查看nextcloud 容器启动状态

![image](https://github.com/ARPmt/arp-takin/assets/127104785/8d25c219-6ce6-4e3d-9080-26e07bb70c89)

容器启动成功后，浏览器打开 nextcloud 管理后台地址,地址为 主机IP:5757

设置用户名、密码，然后点击 "开始安装"

![image](https://github.com/ARPmt/arp-takin/assets/127104785/588c9e30-6385-49e9-9ba2-b2a3eca5a10d)

等待安装完成，进入到 nextcloud 仪表盘界面，表示 nextcloud 安装成功

### 第二步：生成 takin 的认证token
  
用户登录takin平台，在设备菜单的token页面生成token, token 生成完后，复制生成好的token 备用

![image](https://github.com/ARPmt/arp-takin/assets/127104785/23145634-c3f0-4626-bc90-a14a2386dd48)


### 第三步： 部署 takin 容器，网络采用 host-network 模式

启动 takin 容器， 传入 token 及网络区域ID 

docker run -d --restart=always --net=host --name zeronews zeronews/zeronews [token] [网络区域ID]

![image](https://github.com/ARPmt/arp-takin/assets/127104785/5b7d49d8-9840-4fcb-ba82-6538ec2afcb4)

等待 takin 容器 启动完成，可查看takin 容器状态

![image](https://github.com/ARPmt/arp-takin/assets/127104785/1485d70b-0b57-479c-98ef-442e227043bf)

### 第四步： 在takin平台添加 nextcloud 应用

用户登录takin平台，在 "资源" 菜单下的 "域名" 管理页面为 nextcloud 创建 公网可访问的域名

如 域名地址： nextcloud

  选择 对应的 takin 设备

![image](https://github.com/ARPmt/arp-takin/assets/127104785/77565373-71de-41e8-852d-1c7565cf5760)

域名创建成功，在域名列表中可查看创建好的 nextcloud 域名访问地址

![image](https://github.com/ARPmt/arp-takin/assets/127104785/30b862c6-03d9-4346-be5d-da197e3b56d7)

在 "应用" 菜单下，为 nextcloud 创建 应用

应用名称： 如输入 nextcloud

生效设备： 选择 对应的takin 容器客户端

服务类型： 选择 HTTP 协议

域名地址： 选择 上一步创建好的 nextcloud 域名

内网地址： 输入 127.0.0.1

内网端口： 输入 nextcloud 容器的地址 5757

![image](https://github.com/ARPmt/arp-takin/assets/127104785/d39fc2a4-a83d-489b-9a0f-b4eb85ee7926)

nextcloud 应用创建完成后，在应用列表中可查看创建好的 nextcloud

![image](https://github.com/ARPmt/arp-takin/assets/127104785/80a9c118-7ac6-4836-ace6-19e67943d624)

### 第四步： 修改 nextcloud 容器配置文件，添加 nextcloud 域名为信任域名 

进入 主机 的 nextcloud 容器配置文件目录: /opt/nextcloud/html/config
```
cd /opt/nextcloud/html/config
```
修改配置 文件 config.php

将 nextcloud 应用的访问域名 'nextcloud.test.takin.cc' 添加到 'trusted_domains' 配置下面

参考如下：
```
 'trusted_domains' => 
  array (
    0 => '172.16.1.30:5757',
    1 => 'nextcloud.test.takin.cc',
  ),
```

### 第五步: 浏览器或移动端访问 nextcloud 私有网盘

浏览器访问， 用户可打开浏览器，输入 nextcloud 应用的域名地址 nextcloud.test.takin.cc，访问 私有 nextcloud 网盘

![image](https://github.com/ARPmt/arp-takin/assets/127104785/84d1f6d5-562f-4875-b7fe-e2ee2e952b54)


移动端访问 nextcloud 

输入 nextcloud 域名地址： nextcloud.test.takin.cc

![091ddac7-08a0-4106-9366-89fd9d1047f7](https://github.com/ARPmt/arp-takin/assets/127104785/e348d3d8-d88d-4662-a549-4c3e460a8ed9)


![7379d5e0-47af-4303-80f1-b96bced9c247](https://github.com/ARPmt/arp-takin/assets/127104785/e9cd0c0b-bec6-448f-98b4-05f52a7338f7)


## 开发测试

### 内网mysql 连接访问

通过在centos7 系统以容器方式部署 mysql 、 takin 为列，实现用户从公有云、家、外出的时候可快速、安全的访问企业内部、家里的业务数据

#### 第一步： 部署 mysql 容器

为mysql 容器创建 配置文件目录及数据存储目录
```
配置文件： /opt/docker/mysql/config/my.cnf
数据文件： /opt/docker/mysql/data

mkdir -p /opt/docker/mysql/config
mkdir -p /opt/docker/mysql/data

mysql 端口号映射到主机  3306

运行 mysql 容器
docker run -d --name mysql -e MYSQL_ROOT_PASSWORD=xxxxxxxxxx -v /opt/docker/mysql/config/my.cnf:/etc/my.cnf -v /opt/docker/mysql/data:/var/lib/mysql  -p 3306:3306 mysql:latest

```

查看当前运行的 mysql 容器

![image](https://github.com/ARPmt/arp-takin/assets/127104785/a396e183-bd8d-4750-99f0-4b0744ecc165)

#### 第二步：生成 takin 的认证token
  
用户登录takin平台，在设备菜单的token页面生成token, token 生成完后，复制生成好的token 备用

![image](https://github.com/ARPmt/arp-takin/assets/127104785/23145634-c3f0-4626-bc90-a14a2386dd48)

#### 第三步：部署 zeronews 容器，网络采用 host-network 模式

采用 host-network 容器网络模式，部署 zeronews 容器，并传入 生成好的 token 及 网络区域ID

启动 takin 容器， 传入 token 及网络区域ID 

docker run -d --restart=always --net=host --name zeronews zeronews/zeronews [token] [网络区域ID]

![image](https://github.com/ARPmt/arp-takin/assets/127104785/5b7d49d8-9840-4fcb-ba82-6538ec2afcb4)

等待 takin 容器 启动完成，可查看takin 容器状态

![image](https://github.com/ARPmt/arp-takin/assets/127104785/1485d70b-0b57-479c-98ef-442e227043bf)

### 第四步： 在takin平台添加 mysql 连接应用

* 为mysql 分配公网可访问的TCP 端口地址
  
用户登录takin平台，在 "资源" 菜单下的 "端口" 管理页面为 mysql 创建 公网可访问的TCP 域名端口地址

如 设置的公网端口地址为： 13306

选择 对应的 takin 设备

![image](https://github.com/ARPmt/arp-takin/assets/127104785/27935488-7551-4cf0-909e-3ccd6fca6726)

mysql 公网访问域名端口创建成功，在端口列表中可查看用于mysql 连接的 TCP 域名端口地址

![image](https://github.com/ARPmt/arp-takin/assets/127104785/1dedfa48-5df8-4171-a622-d2ff179724f4)

* 为 mysql 创建 公网应用
  
在 "应用" 菜单下，为 mysql 创建 应用

应用名称： 如输入 mysql

生效设备： 选择 创建好的的takin 容器客户端

服务类型： 选择 TCP 协议

域名地址： 选择 上一步创建好的 mysql TCP域名端口

内网地址： 输入 127.0.0.1

内网端口： 输入 mysql 容器的地址 3306

![image](https://github.com/ARPmt/arp-takin/assets/127104785/fc353aa6-9a74-4bb7-8cea-775a5e709d78)

mysql 应用创建完成后，在应用列表中可查看创建好的 mysql 应用

![image](https://github.com/ARPmt/arp-takin/assets/127104785/b24bad24-b5d0-4334-a8b7-8181a2c44225)

### 第五步： 通过mysql 客户端 连接 mysql 数据库 

* 使用 SQLyog 连接 mysql

在mysql Host Address 输入框输入: mysql 的公网域名地址 rjiszs.test.takin.cc

在端口 输入框中输入：公网端口号  13306

![image](https://github.com/ARPmt/arp-takin/assets/127104785/1c3fc779-abe5-4c82-b961-8b61155c99cd)

* 使用linux 系统mysql 工具连接 mysql
在 linux 系统 shell 命令界面输入
```
mysql -uroot -h rjiszs.test.takin.cc -P 13306 -p

-h: 后接  mysql 的公网域名地址 rjiszs.test.takin.cc
-P： 后接 mysql 的公网TCO端口  13306

```

![image](https://github.com/ARPmt/arp-takin/assets/127104785/8a04056d-2baf-487c-892a-a7a6605150e5)



