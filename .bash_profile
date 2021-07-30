# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs
pgrep openvpn || sudo protonvpn c -f  &
sudo tlp start
xset b off
exec /home/yup/.screenlayout/dp.sh &


source /home/yup/.config/broot/launcher/bash/br
