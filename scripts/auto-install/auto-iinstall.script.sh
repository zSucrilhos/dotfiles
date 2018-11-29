#!/bin/sh
echo Auto install script for my Arch Linux rice

# Full system upgrade
sudo pacman -Syyu

# Install Git
echo Installing Git
sudo pacman -S git 

# Enabling AUR on pacman.conf
echo Enabling AUR and installing yay aur helper
echo "[archlinuxfr]" >> /etc/pacman.conf.d/pacman.conf
echo "SigLevel = Never" >> /etc/pacman.conf.d/pacman.conf
echo "Server = http://repo.archlinux.fr/$arch" >> /etc/pacman.conf.d/pacman.conf

echo
# Update the mirrors
echo Update the mirrors
sudo pacman -Syy

echo
# Installing yay
echo Installing yay
echo
mkdir ~/Downloads/ && cd ~/Downloads

git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si

echo
# Installing an LTS kernel
echo Install LTS kernel and the headers
sudo pacman -S linux-lts linux-lts-headers

echo
# Installing xorg
echo Installing xorg
sudo pacman -S xorg-server xorg-xinit xorg-xrandr xorg-xset

echo
# Installing i3-gaps WM and complementary packages
echo Installing i3-gaps WM and complementary packages
sudo pacman -S i3-gaps dmenu rofi polybar dunst compton

echo
# Installing networkmanager
echo Installing networkmanager
sudo pacman -S networkmanager

echo
# Main browsers
echo Installing main browsers
sudo pacman -S qutebrowser firefox

echo
# Some tools
echo Installing basic programs
sudo pacman -S wget p7zip unzip unrar tar tree feh scrot hwwinfo maim polkit-gnome gnome-keyring mingetty

echo
# Now the codecs
echo Multimedia codecs
sudo pacman -S a52dec faac faad2 flac jasper lame libdca libcv libmad libmpeg2 libtheora libvorbis libxv wavpack x264 xvidcore

echo
# Multimedia tools
echo "Installing multimedia tools (codecs, players etc)"
sudo pacman -S alsa-utils playerctl pulseaudio pulseaudio-alsa pavucontrol mpsyt alsa-mixer mpd mpc ncmpcpp libmpdclient mplayer bgacklight xorg-xbacklight vlc

echo
systemctl start mpd.service
systemctl enable mpd.service

echo
# python
echo Installing python pip
sudo pacman -S python2-pip python-pip

echo
# fonts
echo Installing fonts
sudo pacman -S ttf-font-awesome nerd-fonts-hack terminus-font-ttf ttf-dejavu ttf-unifont siji-git powerline-fonts

echo
# nvidia drivers
echo Installing nvidia drivers
sudo pacman -S nvidia nvidia-settings arandr

echo
# CPU Management
echo CPU management programs
sudo pacman -S thermald cpupower

echo
echo Enable them at systemd
systemctl enable thermald.service
systemctl enable cpupower.service

echo
# shell settings
echo ZSH and tmux combo
sudo pacman -S termite zsh zsh-completions zsh-autosuggestions zsh-syntax-highlighting zsh-history-substring-search tmux fzf

echo
# Install oh-my-zsh and oh-my-tmux
oh my zsh oh my tmux

echo
# Change default shell to zsh
chsh -s /bin/zsh

echo
# Pamac GUI
echo Pamac GUI
sudo pacman -S pamac-aur gksu
echo You have to enable AUR support on pamac configurations

echo
# Download utilities
sudo pacman -S aria2 qbittorrent transmisson

echo
# File handling
echo File handling software
sudo pacman -S spacefm nemo ranger file-roller thunar tumbler thunar-volman thunar-archive-plugin thunar-media-tags-plugin gvfs

echo
# GTK + themes
sudo pacman -S arc-gtk-theme arc-icon-theme gtk-engine-murrine gtk-engines flatplat-theme numix-gtk-theme vibrancy-colors papirus-icon-theme breeze-obsidian-cursor-theme

echo
#installl vim plug

echo
# Finally, the last things to install
echo Miscelaneous
sudo pacman -S gtop htop code xkill lxappearance bleachbit conky unclutter 

# NOW MOVE THE DOTFILES TO ITS LOCATION
# test acpid





