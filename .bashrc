alias hormnanlog='tail -30f /app/horus/server/horman/log/horman.log'
alias trafflog='tail -100f /app/horus/server/trafficam/log/trafficam.log'
alias appenv='vim /app/horus/.env'
alias dup='docker-compose up -d'
alias dl='docker logs --tail 100 -f '







# 系统相关
alias ll='ls -lah --color'
alias meminfo='free -h -l -t'
alias cd..='cd ..'
alias ports='netstat -tulanp'
alias timestamp='now; echo s: $(date +"%s"); echo ms: $(echo `expr \`date +%s%N\` / 1000000`)'
alias now='date "+%Y-%m-%d %H:%M:%S.%s"'
# 自动在文件末尾加上 .bak-日期 来备份文件，如 bu nginx.conf
bak() { cp "$@" "$@.bak"-`date +%y%m%d`; echo "`date +%Y-%m-%d` backed up $PWD/$@"; }

# 级联创建目录并进入，如 mcd a/b/c
mcd() { mkdir -p $1 && cd $1 && pwd ; }

alias openport='iptables -A INPUT -p tcp --dport $1 -j ACCEPT && service iptables reload'
alias openports="iptables -L INPUT -nv | grep 'dpt:'"
