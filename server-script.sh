sudo yum install java-1.8.0-openjdk-devel -y
sudo yum install git -y
sudo yum install maven -y
# sudo yum install docker -y
# sudo systemctl start doccker
if [-d "COPADO"]
then 
  echo "repo is cloned and exists"
  cd /home/ec2-user/COPADO
  git pull origin democicd
else
  git clone https://github.com/Sravanthi2030/COPADO.git
fi
cd /home/ec2-user/COPADO
mvn package