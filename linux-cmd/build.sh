echo " ... git tc source code ..."
git clone https://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@github.com/sixtea/takin-client-worker.git
sleep 1

echo " ... rm old linux-cmd and cp new linux-cmd ..."
rm -rf linux-cmd
cp -a takin-client-worker/linux-cmd ./

echo " ... build takin-tc image ..."
docker build -t takin-tc .
docker tag takin-tc arp1321/takin-tc:latest

echo " ... push takin-tc image to docker hub ..."
docker push arp1321/takin-tc