TARGET_DIR=/var/squidGuard

cd $TARGET_DIR || exit

wget http://www.shallalist.de/Downloads/shallalist.tar.gz -O $TARGET_DIR/shallalist.tar.gz

sudo -u squid tar xzf $TARGET_DIR/shallalist.tar.gz
sudo -u squid /usr/bin/squidGuard -c /etc/squid/squidGuard.conf  -C all

systemctl restart squid.service


