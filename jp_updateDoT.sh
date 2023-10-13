tls://8888.google
tls://8.8.8.8
tls://1.1.1.1
tls://dot-jp.blahdns.com
tls://jp.tiar.app
tls://anycast.dns.nextdns.io
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

# dnscrypt
wget --no-verbose -O - https://raw.githubusercontent.com/AdguardTeam/AdGuardHome/master/scripts/install.sh | sh -s -- -v
sudo /opt/AdGuardHome/AdGuardHome -s start|stop|restart|status|install|uninstall

config
stop

wget https://github.com/ameshkov/dnscrypt/releases/download/v2.2.7/dnscrypt-linux-amd64-v2.2.7.tar.gz

tar -f ./dnscrypt-linux-amd64-v2.2.7.tar.gz -v -x -z

cd ./linux-amd64/   cp dnscrypt /opt/AdGuardHome

./dnscrypt generate --provider-name '2.dnscrypt-cert.example.org'\
    --out ./dnscrypt.yaml

nano AdGuardHome.yaml

start

nano dnscrypt.yaml cp public key to Tomato

    
