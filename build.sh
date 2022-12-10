export $(cat .env | xargs)
packer init .
packer validate . && \
while true; do
    read -p "Continue Packer build? [y/n] " yn
    case $yn in
        [Yy]* ) packer build .; break;;
        [Nn]* ) echo "exit"; exit;;
        * ) echo "Please answer yes or no.";;
    esac
done