# the prompt in a somewhat Terminal -type independent manner:

cname="$(tput setf 3)"; \
csgn="$( tput setf 4)"; \
chost="$(tput setf 2)"; \
cw="$(   tput setf 6)"; \
crst="$( tput  sgr 0)"; \
PS1="\[${cname}\]\u\[${csgn}\]@\[${chost}\]\h:\[${cw}\]\w\[${csgn}\]\$\[${crst}\] "

# ALIAKSET
alias ls="ls --color=always"
alias irkki="mosh anacron@nakkiservo.org"
alias remote-atom="ssh -R 52698:localhost:52698 anacron@do.nakkiservo.org"
alias nettidata="sudo iftop -P -i $(ip addr | grep "state UP" |cut -d ":" -f 2)"
alias vpn-fi="sudo openvpn --config /etc/openvpn/ovpn_tcp/fi70.nordvpn.com.tcp.ovpn"
alias vpn-us="sudo openvpn --config /etc/openvpn/ovpn_tcp/us3942.nordvpn.com.tcp.ovpn"
alias vpn-sg="sudo openvpn --config /etc/openvpn/ovpn_tcp/sg183.nordvpn.com.tcp.ovpn"
alias poppari="/home/anacron/popcorn/Popcorn-Time"
alias agdq="livestreamer twitch.tv/gamesdonequick best"
alias layout-fi="setxkbmap fi"
alias layout-us="setxkbmap us"

eval "$(ntfy shell-integration)"
export AUTO_NTFY_DONE_IGNORE="vim screen nano"

PROMPT_COMMAND='echo -ne "\033]0;${USER}@${HOSTNAME}:${PWD}\007"'

#ssh login notification⎋
IP="$(echo $SSH_CONNECTION | cut -d " " -f 1)"
HOSTNAME=$(hostname)
#NOW=$(date +"%e %b %Y, %a %r")
NOW=$(date)
notify-send -u critical "$IP logged into $HOSTNAME on $NOW"

#countdown scriptat
countdown(){
    date1=$((`date +%s` + $1));
    while [ "$date1" -ge `date +%s` ]; do 
    ## Is this more than 24h away?
    days=$(($(($(( $date1 - $(date +%s))) * 1 ))/86400))
    echo -ne "$days day(s) and $(date -u --date @$(($date1 - `date +%s`)) +%H:%M:%S)\r"; 
    sleep 0.1
    done
}
stopwatch(){
    date1=`date +%s`; 
    while true; do 
    days=$(( $(($(date +%s) - date1)) / 86400 ))
    echo -ne "$days day(s) and $(date -u --date @$((`date +%s` - $date1)) +%H:%M:%S)\r";
    sleep 0.1
    done
}
