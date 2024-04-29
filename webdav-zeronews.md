# 利用ZeroNews 在windows下，以 WebDAV方式实现本地文件公网访问协同

WebDAV 是一种基于HTTP协议，满足用户对文件进行在线分享、管理等操作，通过 ZeroNews 实现在公网访问用户本地文件公网及多人协同操作。

## 2.部署步骤
以 windows 10 为例部署WebDAV

1. 安装 WebDAV 系统组件 IIS

用户点击电脑左下角 "开始"， 所搜 "控制面板", 并打开

![image](https://github.com/ARPmt/arp-takin/assets/127104785/add973ab-abe7-4312-80f2-41b0a6f2d28c)

![image](https://github.com/ARPmt/arp-takin/assets/127104785/6782f2ba-ef71-47d1-9134-d25413fa28d0)

在 "控制面板" 界面，点击 "程序和功能" ，在 "程序和功能"功能 点击 "启用或关闭windows 功能"，打开 "windows 功能" 弹窗

![image](https://github.com/ARPmt/arp-takin/assets/127104785/81882cc8-6a29-497c-a746-d5954a10c759)

在  "windows 功能" 弹窗中，打开 "Internet Information Services" 下的 "Web 管理工具"，勾选 "IIS 管理控制台"

![image](https://github.com/ARPmt/arp-takin/assets/127104785/d21d0e22-3ee7-4151-9d05-ad0b4a4cebfe)

打开 "Internet Information Services" 下的 "万维网服务"，在 "安全性" 下勾选 "Windows 身份验证" 及 "基本身份验证"

![image](https://github.com/ARPmt/arp-takin/assets/127104785/3b801a28-0c44-47e1-bbe7-fca655dc581e)

打开 "Internet Information Services" 下的 "万维网服务"，在 "常见 HTTP 功能" 下，勾选 "WebDAV"、"静态内容"、"目录浏览" 三项

![image](https://github.com/ARPmt/arp-takin/assets/127104785/f79ddf53-3e7f-41c2-8fc5-8c6b3188f0e0)

点击 "确定"， 等待完成 IIS服务及WebDAV服务安装，

安装完成后，用户点击电脑左下角 "开始"，找到 "Windows 管理工具" 下的 "Internet Information Service（IIS）" IIS管理器并打开

![image](https://github.com/ARPmt/arp-takin/assets/127104785/463e084e-8aa7-46f6-839e-c16e4738c659)

在 IIS 管理器 界面，选择左上角的 "网站" 右键 选择 "添加网站"，

![image](https://github.com/ARPmt/arp-takin/assets/127104785/c3f1d9de-492c-4701-8f5e-f2c371d648e7)

在添加网站 界面下，输入 网站的名称,如"webdev", 选择要分享的文件路径， 然后输入 端口号，如 8080， 然后点击确定完成 webdav网站添加

![image](https://github.com/ARPmt/arp-takin/assets/127104785/83c2959f-7550-404e-9ef4-bd24ddc18226)

在 网站主界面下，可查看创建好的 webdav 网站

![image](https://github.com/ARPmt/arp-takin/assets/127104785/24f315a5-0019-4737-83d7-b408c774fea5)

选中点击 "webdav" ，进入到 网站设置界面， 点击 "WebDAV创作规则" 界面

![image](https://github.com/ARPmt/arp-takin/assets/127104785/9136d74d-b875-4ced-b883-7a63ade24ec6)

在 "WebDAV创作规则" 界面，点击右上角的 "启用WebDAV" ,启用 WebDAV功能

![image](https://github.com/ARPmt/arp-takin/assets/127104785/9f5414a7-e03b-4387-b9ac-ecb8acf4d9b8)

然后点击 "添加创作规则" 添加Webdav网站的访问规则

![image](https://github.com/ARPmt/arp-takin/assets/127104785/87a1fd1c-83c7-4bf9-9f34-865642933872)

选中点击 "webdav" ，进入到 网站设置界面， 点击 "身份验证" 进入 "身份验证" 界面， 启用 "基本身份验证"， 禁用 "windows身份验证" 及 "匿名身份验证"

![image](https://github.com/ARPmt/arp-takin/assets/127104785/def1693f-d768-4da7-8224-5c15eefbd2dc)

![image](https://github.com/ARPmt/arp-takin/assets/127104785/3842eeed-4a20-4041-a418-1b8b4d8962ce)

选中点击 "webdav" ，进入到 网站设置界面，点击 "目录浏览" 进入到 "目录浏览" 界面

![image](https://github.com/ARPmt/arp-takin/assets/127104785/81f7cfdd-b5b3-41a0-949c-2db561f5c05b)

点击 右上角 "启用" 按钮，启用webdav 目录浏览功能 

![image](https://github.com/ARPmt/arp-takin/assets/127104785/ecb42de5-3816-4ef6-93da-0d71a0247944)

到此， webdav 网站设置完成，用户可以本地浏览器中 输入 http://localhost:8080 预览本地目录文件

![image](https://github.com/ARPmt/arp-takin/assets/127104785/74bae86e-e887-4d2d-94a8-51171ec0dab0)

接入来，在本地运行 zeronews windows 客户端，来映射 webdav 网站，已实现公网访问

## 第二步： 在windows 上 运行 Zeronews 客户端

参考 [windows上运行Zeronew](takindoc.test.takin.cc)

## 第三步：为Webdav 网站 添加 HTTTPS 公网应用

### 首先为 webdev 网站分配 zeronews 公网域名，如  webdav.test.takin.cc

用户登录 Zeronews 平台， 在 "资源" - "域名" 管理页面，添加 webdav 公网域名
  
生效设备： 选择 windows 上运行的 zeronews 客户端
  
域名前缀： 如 webdav

![image](https://github.com/ARPmt/arp-takin/assets/127104785/1fd83ef7-4c76-47d4-8b34-77e75b4f697b)

域名创建完成后，在域名列表中可查看创建好的 域名，并开启 TLS证书 功能
  
![image](https://github.com/ARPmt/arp-takin/assets/127104785/5d88eace-4132-4c6d-be41-fdca476a6a0c)

### 为 webdav 网站 添加以 HTTPS 方式访问应用

用户 在 "应用" 管理页面下添加 webdav 公网域名添加应用
 
应用名称：webdav

生效设备： 选择 windows zeronews 客户端

服务类型： 选择 HTTPS 协议

域名地址： 选择 webdav.test.takin.cc 域名

内网地址： 输入 127.0.0.1

在服务映像下，添加 HTTPS 访问服务

协议： 选择 HTTPS 协议

内网端口： 输入 webdav网站的访问端口号 8080

![image](https://github.com/ARPmt/arp-takin/assets/127104785/7f754eb4-fd97-4aec-8f97-4449944b1244)

应用添加完成后，可在应用列表中查看 添加完成的 webdav 应用

![image](https://github.com/ARPmt/arp-takin/assets/127104785/efaea27e-7bd9-40fc-b3a9-ac8daa298392)

## webdav 网站公网访问

用户打开浏览器，输入 webdav 应用的 zeronew 公网域名地址 https://webdav.test.takin.cc 放 webdav 应用

输入 用户名/密码， 为运行 webdav 电脑的 开机用户名/密码 

 ![image](https://github.com/ARPmt/arp-takin/assets/127104785/b29276fa-babd-464a-907e-0cfc54e8679e)

用户名/密码验证成功后，成功访问 webdav 网站，进行文件分享

![image](https://github.com/ARPmt/arp-takin/assets/127104785/c8d421d7-a37c-4926-912a-1f088e19be79)
