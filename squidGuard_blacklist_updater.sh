TARGET_DIR=/var/squidGuard

cd $TARGET_DIR || exit

wget http://www.shallalist.de/Downloads/shallalist.tar.gz -O $TARGET_DIR/shallalist.tar.gz

tar xzf $TARGET_DIR/shallalist.tar.gz
sleep 5
squidGuard -c /etc/squid/squidGuard.conf  -C all
chown -R squid.squid /var/squidGuard

systemctl restart squid.service


