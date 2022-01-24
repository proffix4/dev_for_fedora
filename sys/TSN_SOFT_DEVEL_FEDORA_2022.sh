#!/bin/sh

sudo dnf update

sudo dnf install gcc-c++

sudo dnf install git
git config --global user.name "proffix4"
git config --global user.email "proffix4@gmail.com"

sudo dnf install java-11-openjdk java-11-openjdk-devel
sudo alternatives --config java
sudo alternatives --config java_sdk_openjdk

sudo dnf install python3-pip qt5-designer python3-tkinter
sudo dnf install python3-qt5-base python3-qt5-devel python3-pytz
pip install pyqt5 setuptools numpy pandas 
pip install openpyxl xlrd python-docx XlsxWriter openpyxl
pip install Pillow ebooklib pykson bs4

# sudo dnf install https://repo.mysql.com//mysql80-community-release-fc35-1.noarch.rpm
# sudo dnf install mysql-community-server

sudo dnf module list mysql
sudo dnf module enable mysql:8.0 -y
sudo dnf install mysql mysql-server

systemctl start mariadb.service
sudo systemctl enable mariadb.service
sudo dnf install mysql-workbench

sudo mysql_secure_installation
#   (!) root password: password
#   (!) new root password: PassW0Rd++

