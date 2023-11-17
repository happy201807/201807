atls://jp.tiar.app
tls://185.222.222.222

ALLOW IP
10.0.0.0/8  #LAN
27.0.0.0/8
39.0.0.0/8
60.0.0.0/8
112.255.0.0/16
119.0.0.0/8
123.0.0.0/8
124.0.0.0/8
221.0.0.0/8

122.121.0.0/16 #hinet
myIP/32  #myIP

adblock

AdGuard DNS filter
CHN: AdRules DNS List
CHN: anti-AD

https://easylist.to/easylist/easylist.txt
https://easylist.to/easylist/easyprivacy.txt
https://easylist-downloads.adblockplus.org/easylistchina.txt
https://secure.fanboy.co.nz/fanboy-annoyance.txt
https://secure.fanboy.co.nz/fanboy-cookiemonster.txt






# dnscrypt
wget --no-verbose -O - https://raw.githubusercontent.com/AdguardTeam/AdGuardHome/master/scripts/install.sh | sh -s -- -v


sudo /opt/AdGuardHome/AdGuardHome -s start|stop|restart|status|install|uninstall

config  manual 
stop     /opt/AdGuardHome/AdGuardHome -s stop

wget https://github.com/ameshkov/dnscrypt/releases/download/v2.2.7/dnscrypt-linux-amd64-v2.2.7.tar.gz

tar -f ./dnscrypt-linux-amd64-v2.2.7.tar.gz -v -x -z

cd ./linux-amd64/   cp dnscrypt /opt/AdGuardHome

cd /opt/AdGuardHome

./dnscrypt generate --provider-name '2.dnscrypt-cert.dqn.ddns.net'\
    --out ./dnscrypt.yaml

nano AdGuardHome.yaml

start     /opt/AdGuardHome/AdGuardHome -s start

nano dnscrypt.yaml cp public key to Tomato

https://github.com/AdguardTeam/AdGuardHome/wiki/DNSCrypt










#  echo b > /proc/sysrq-trigger




# 443

# /certificate enable-ssl-certificate dns-name=my.domain.com

# /container/add remote-image=ubuntu:bionic interface=veth1 logging=yes

the container will add successfully but when i try to run , it will stop after a few seconds
if i add
Code: Select all

# tail -f /dev/null

in "cmd" field of container , it will not stop but there is no ssh access to it by ip of veth1
also there is no log about container; even if I enable container topic in logging


# /container/shell 0/1


    
