read -p "Install packages with apt-get? Y/N " -n 1 -r
if [[ $REPLY =~ ^[Yy]$ ]]
then
sudo apt-get install i3blocks fonts-font-awesome blueman compton conky libxml2-utils scrot rxvt-unicode i3 feh openvpn resolvconf evtest mosh net-tools mpv xbindkeys
echo "apt-get done"
fi
read -p "Install playerctrl for i3blocks Y/N " -n 1 -r
if [[ $REPLY =~ ^[Yy]$ ]]
then
wget https://github.com/acrisci/playerctl/releases/download/v0.5.0/playerctl-0.5.0_amd64.deb && sudo dpkg -i playerctl-0.5.0_amd64.deb
echo "playerctrl"
fi
echo "all done!"
