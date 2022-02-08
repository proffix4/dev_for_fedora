#!/bin/sh

sudo dnf update

# ------- C/C++  --------
sudo dnf install gcc-c++

# ------- git  --------
sudo dnf install git
git config --global user.name "proffix4"
git config --global user.email "proffix4@gmail.com"

# ------- java  --------
sudo dnf install java-11-openjdk java-11-openjdk-devel
sudo alternatives --config java
sudo alternatives --config java_sdk_openjdk

# ------- python  --------
sudo dnf install python3-pip qt5-designer python3-tkinter python3-qt5-base python3-qt5-devel python3-pytz -y
pip install pyqt5 setuptools numpy pandas openpyxl xlrd python-docx XlsxWriter openpyxl Pillow ebooklib pykson bs4

# ------- mysql  --------
sudo dnf install https://repo.mysql.com//mysql80-community-release-fc35-2.noarch.rpm
sudo dnf install mysql-community-server
sudo systemctl start mysqld
sudo systemctl enable mysqld
sudo grep 'temporary password' /var/log/mysqld.log
#	PassW0Rd++
sudo mysql_secure_installation
sudo dnf install mysql-workbench -y
