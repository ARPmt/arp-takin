# takin 文档

# 什么是takin

# takin 是怎么上线工作

# takin 快速上线

# takin 收费模式

# takin 安装运行

  ##  在windows 系统上运行
  ##  linux 系统上运行
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

    
  ##  macos 系统上运行
  ##  openwrt 上运行
  
# takin 平台用户手册
  ## 用户中心
  ## 设备管理
  ## 资源管理
  ## 用户应用

# 典型应用

