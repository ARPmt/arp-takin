# arp-takin
arp takin docker

下载 takin-tc 镜像

docker pull ghcr.io/arpmt/arp-takin:main


启动 takin-tc 容器，传入 token

docker run -it -d  --name takin ghcr.io/arpmt/arp-takin:main HKGR7rz4QGGUZpn1v8iahg==
