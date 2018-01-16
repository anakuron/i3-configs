read -p "Install packages with apt-get? Y/N " -n 1 -r
if [[ $REPLY =~ ^[Yy]$ ]]
then
sudo apt-get install i3blocks fonts-font-awesome blueman compton conky libxml2-utils scrot rxvt-unicode i3 feh openvpn resolvconf evtest mosh
echo "SCRIPT all done"
fi

