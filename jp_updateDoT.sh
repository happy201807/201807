tls://8888.google

tls://jp.tiar.app
tls://185.222.222.222

:53
27.0.0.0/8
39.0.0.0/8
60.0.0.0/8
112.255.0.0/16
119.0.0.0/8
123.0.0.0/8
124.0.0.0/8
221.0.0.0/8

122.121.0.0/16
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

./dnscrypt generate --provider-name '2.dnscrypt-cert.example.org'\
    --out ./dnscrypt.yaml

nano AdGuardHome.yaml

start     /opt/AdGuardHome/AdGuardHome -s start

nano dnscrypt.yaml cp public key to Tomato

    
