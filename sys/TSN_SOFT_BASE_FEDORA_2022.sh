#!/bin/sh

sudo dnf upgrade --refresh

# ------- multimedia  --------
sudo dnf install \
  https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm
sudo dnf install \
  https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
sudo dnf install gstreamer1-plugins-{bad-\*,good-\*,base} gstreamer1-plugin-openh264 gstreamer1-libav --exclude=gstreamer1-plugins-bad-free-devel
sudo dnf install lame\* --exclude=lame-devel
sudo dnf group upgrade --with-optional Multimedia

# ------- base soft  --------
sudo dnf install pavucontrol dnfdragora gthumb geary pdfshuffler qbittorrent gparted gtkhash obs-studio shotwell xfburn -y
sudo dnf install neofetch -y

# ------- calibre  --------
sudo -v && wget -nv -O- https://download.calibre-ebook.com/linux-installer.sh | sudo sh /dev/stdin

# ------- шрифты от MS  --------
#sudo dnf install curl cabextract xorg-x11-font-utils fontconfig
#sudo rpm -i https://downloads.sourceforge.net/project/mscorefonts2/rpms/msttcore-fonts-installer-2.6-1.noarch.rpm

# ------- научные программы --------
#sudo dnf install kmplot kalgebra scidavis 

# ==================   раскомментируйте для Cinnamon   ==============================================
#sudo dnf install audacious audacious-plugins-* vlc retext flameshot okular kate xterm gnome-software
# ===================================================================================================
