sudo dnf install fedora-packager @development-tools
sudo dnf install gawk m4 cmake gcc-c++ wxGTK3-devel xerces-c-devel spdlog-devel uchardet-devel
sudo dnf install libssh-devel openssl-devel libsmbclient-devel libnfs-devel neon-devel libarchive-devel pcre2-devel
sudo usermod -a -G mock $USER
rpmdev-setuptree
wget https://github.com/elfmz/far2l/archive/refs/heads/master.zip
mv master.zip far2l-master.zip
cp far2l-master.zip ~/rpmbuild/SOURCES
rpmbuild -ba far2l.spec
