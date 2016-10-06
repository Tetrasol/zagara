sudo apt-get update
sudo apt-get install -y git software-properties-common
sudo apt-add-repository ppa:ansible/ansible
sudo apt-get update
sudo apt-get install -y ansible
cd .ssh
ssh-keygen -t rsa -b 4096 -N "" -f ansible.key -C "ansible node"
sudo chown vagrant:vagrant ansible.key
sudo chown vagrant:vagrant ansible.key.pub
eval "$(ssh-agent -s)"
ssh-add ansible.key
