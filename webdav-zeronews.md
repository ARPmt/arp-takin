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

打开 "Internet Information Services" 下的 "万维网服务"，在 "安全性" 下勾选 "Windows 身份验证"

![image](https://github.com/ARPmt/arp-takin/assets/127104785/31150139-7443-4011-abdd-ae295f64fd96)

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
