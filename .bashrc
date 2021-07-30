 # .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
	for rc in ~/.bashrc.d/*; do
		if [ -f "$rc" ]; then
			. "$rc"
		fi
	done
fi

unset rc

alias nalias='nano /home/yup/.bashrc'
alias salias='source /home/yup/.bashrc'
alias conf='nano /home/yup/.config/i3/config'
alias dsi='sudo dnf install'
alias dsr='sudo dnf remove'
alias dsu='sudo dnf update'
alias dsug='sudo dnf upgrade'
alias dss='sudo dnf search'
alias clr='clear'
alias ..='cd ..'
alias vpn='sudo protonvpn c'
alias chx='chmod a+x'

source /home/yup/.config/broot/launcher/bash/br
eval "$(starship init bash)"
