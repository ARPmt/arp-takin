# takin 文档

# 什么是takin
  takin边缘云系统 是一个统一应用安全访问管理平台，无论您的web、tcp/udp应用部署在企业内网服务器、家中的服务器、数据中心内部、公有云及其他任何位置，通过takin，用户无需安装vpn、代理等网络工具，更不用更改现有网络环境，即可浏览器或应用工具基于互联网安全、高速的访问内网应用

  takin 作为跨平台的、独立与操作系统环境、可独立运行的执行程序，没有任何系统软件包依赖，用户下载一键启动，支持 windows/macos/linux等x86、ARM 等平台操作系统.

  takin 为用户提供统一的应用管理平台，在应用管理平台内，用户可以很方便的管理公网域名、固定端口、可访问的内网应用及takin 客户端，并可实时监控客户端、应用的运行状态

# takin 是怎么上线工作

# takin 快速上线

# takin 权益模式

  takin 采用license 权益收费模式，按license数量收取费用，区别于传统的套餐打包的模式，用户可根据实际业务模式按需订购，即用即订购，不用提前购买，用户可更好的规划takin用途，帮助用户节省使用成本，而无需担心额外的消费支出。

  takin 1 个license 权益包含 ：
    * 包含1G国内通用流量、
    * 1个HTTP域名
    * 1个HTTPS 证书
    * 一个TCP或UDP固定端口
  用户可按量、按月、按年订购，在license 权益有效期内，域名跟固定端口可任意创建、销毁、重建，没有任何限制， 
  
  根据用户类型的不同，个人用户只能购买个人版权益类型，企业用户只能购买企业版权益类型

  
  
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

