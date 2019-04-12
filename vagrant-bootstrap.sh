#!/bin/bash -eu

apt update
apt upgrade -y

# Tools
apt install -y fish automake bison flex g++ git libboost-all-dev libevent-dev libssl-dev libtool make pkg-config vim
# Use softwares
apt install -y mariadb-server mariadb-client nginx 

cd /tmp

curl https://www.php.net/distributions/php-7.2.17.tar.gz -# -o php7.2.tar.gz
tar -zxf php7.2.tar.gz
rm -rf php7.2.tar.gz
cd php-7.2.17/

# php dependencies
apt install -y libxml2-dev libbz2-dev libcurl4-openssl-dev libwebp-dev libjpeg-dev libpng-dev libxpm-dev libfreetype6-dev libgmp3-dev libreadline-dev libsnmp-dev libtidy-dev libxslt-dev snmp

./configure --prefix=/opt/php --with-libdir=lib64 --with-pic --with-bz2 --with-freetype-dir --with-png-dir --with-xpm-dir --with-gettext --with-gmp --with-iconv --with-jpeg-dir --with-curl --with-webp-dir --with-png-dir --with-openssl --with-pcre-regex --with-zlib --with-layout=GNU --enable-exif --enable-ftp --enable-sockets --with-kerberos --enable-shmop --enable-calendar --with-libxml-dir --with-mhash --with-readline --with-snmp --with-tidy --with-xsl --with-gnu-ld --enable-mysqlnd --with-mysqli=mysqlnd --with-pdo-mysql=mysqlnd --with-mysql-sock=/var/lib/mysql/mysql.sock --enable-mbstring --with-gd --enable-fpm
make
sudo make install

export PATH=$PATH:/opt/php/bin
export PATH=$PATH:/opt/php/sbin
echo "PATH=$PATH" > /etc/environment
