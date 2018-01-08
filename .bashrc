#function fgtab {
#  echo "tput setf/setb - Foreground/Background table"
#  for (( f=0; f<8 ; f++ ));do
#    for (( b=0; b<8 ; b++ ));do
#      echo -en "$(tput setf ${f})$(tput setb ${b}) $f/$b ";
#    done;
#    echo -e "$(tput sgr 0)";
#  done
#}

# the prompt in a somewhat Terminal -type independent manner:

cname="$(tput setf 3)"; \
csgn="$( tput setf 4)"; \
chost="$(tput setf 2)"; \
cw="$(   tput setf 6)"; \
crst="$( tput  sgr 0)"; \
PS1="\[${cname}\]\u\[${csgn}\]@\[${chost}\]\h:\[${cw}\]\w\[${csgn}\]\$\[${crst}\] "

# ALIAKSET
alias ls="ls --color=always"
alias irkki="mosh anacron@do.nakkiservo.org"
alias wlan-iftop="sudo iftop -i wlp3s0"
alias eth0-iftop="sudo iftop -i eth0"
alias vpn-suomi="sudo openvpn --config /etc/openvpn/ovpn_tcp/fi8.nordvpn.com.tcp.ovpn"
alias vpn-jenkki="sudo openvpn --config /etc/openvpn/ovpn_tcp/us1183.nordvpn.com.tcp.ovpn"
alias poppari="/home/anacron/popcorn/linux64/Popcorn-Time"
PROMPT_COMMAND='echo -ne "\033]0;${USER}@${HOSTNAME}:${PWD}\007"'
