sudo apt update && apt upgrade -y
sudo apt-get install ca-certificates curl gnupg lsb-release -y
sudo mkdir -p /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
  
sudo chmod a+r /etc/apt/keyrings/docker.gpg
sudo apt-get update

sudo apt-get install docker-ce docker-ce-cli containerd.io docker-compose-plugin -y
sudo apt install docker-compose -y

    echo "正在下载安装,请确保服务器网络正常同时有20GB以上的硬盘空间"
    git clone https://github.com/muon-protocol/muon-node-js.git --recurse-submodules --branch testnet
    cd muon-node-js
    docker-compose build
    docker-compose up -d
    sleep 5
    echo "启动成功！"
    echo "请访问网址 http://此处替换为你的服务器IP:8000/status"

cd $HOME && curl -O https://gitlab.com/shardeum/validator/dashboard/-/raw/main/installer.sh && chmod +x installer.sh && ./installer.sh
