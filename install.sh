#!/bin/bash
arch="$(uname -m)"
apt-get update
apt-get -y dist-upgrade
apt-get -y install git
apt-get -y install php5-cli curl
/bin/mkdir -p /home/fos-streaming/fos/www/
cd /home/fos-streaming/fos/www/
git clone https://github.com/amidevous/FOS-Streaming-v1.git .
apt-get install -y --force-yes libxml2-dev
apt-get install -y --force-yes libbz2-dev
apt-get install -y --force-yes libcurl4-openssl-dev 
apt-get install -y --force-yes libmcrypt-dev
apt-get install -y --force-yes libmhash2
apt-get install -y --force-yes libmhash-dev
apt-get install -y --force-yes libpcre3
apt-get install -y --force-yes libpcre3-dev
apt-get install -y --force-yes make
apt-get install -y --force-yes build-essential
apt-get install -y --force-yes libxslt1-dev git
apt-get install -y --force-yes libssl-dev
apt-get install -y --force-yes git
apt-get install -y --force-yes php5
apt-get install -y --force-yes unzip
apt-get install -y --force-yes python-software-properties
apt-get install -y --force-yes libpopt0
apt-get install -y --force-yes libpq-dev
apt-get install -y --force-yes libpq5
apt-get install -y --force-yes libpspell-dev
apt-get install -y --force-yes libpthread-stubs0-dev
apt-get install -y --force-yes libpython-stdlib
apt-get install -y --force-yes libqdbm-dev
apt-get install -y --force-yes libqdbm14
apt-get install -y --force-yes libquadmath0
apt-get install -y --force-yes librecode-dev
apt-get install -y --force-yes librecode0
apt-get install -y --force-yes librtmp-dev
apt-get install -y --force-yes librtmp0
apt-get install -y --force-yes libsasl2-dev
apt-get install -y --force-yes libsasl2-modules
apt-get install -y --force-yes libsctp-dev
apt-get install -y --force-yes libsctp1
apt-get install -y --force-yes libsensors4
apt-get install -y --force-yes libsensors4-dev
apt-get install -y --force-yes libsm-dev
apt-get install -y --force-yes libsm6
apt-get install -y --force-yes libsnmp-base
apt-get install -y --force-yes libsnmp-dev
apt-get install -y --force-yes libsnmp-perl
apt-get install -y --force-yes libsnmp30
apt-get install -y --force-yes libsqlite3-dev
apt-get install -y --force-yes libssh2-1
apt-get install -y --force-yes libssh2-1-dev
apt-get install -y --force-yes libssl-dev
apt-get install -y --force-yes libstdc++-4.8-dev
apt-get install -y --force-yes libstdc++6-4.7-dev
apt-get install -y --force-yes libsybdb5
apt-get install -y --force-yes libtasn1-3-dev
apt-get install -y --force-yes libtasn1-6-dev
apt-get install -y --force-yes libterm-readkey-perl
apt-get install -y --force-yes libtidy-0.99-0
apt-get install -y --force-yes libtidy-dev
apt-get install -y --force-yes libtiff5
apt-get install -y --force-yes libtiff5-dev
apt-get install -y --force-yes libtiffxx5
apt-get install -y --force-yes libtimedate-perl
apt-get install -y --force-yes libtinfo-dev
apt-get install -y --force-yes libtool
apt-get install -y --force-yes libtsan0
apt-get install -y --force-yes libunistring0
apt-get install -y --force-yes libvpx-dev
apt-get install -y --force-yes libvpx1
apt-get install -y --force-yes libwrap0-dev
apt-get install -y --force-yes libx11-6
apt-get install -y --force-yes libx11-data
apt-get install -y --force-yes libx11-dev
apt-get install -y --force-yes libxau-dev
apt-get install -y --force-yes libxau6
apt-get install -y --force-yes libxcb1
apt-get install -y --force-yes libxcb1-dev
apt-get install -y --force-yes libxdmcp-dev
apt-get install -y --force-yes libxdmcp6
apt-get install -y --force-yes libxml2
apt-get install -y --force-yes libxml2-dev
apt-get install -y --force-yes libxmltok1
apt-get install -y --force-yes libxmltok1-dev
apt-get install -y --force-yes libxpm-dev
apt-get install -y --force-yes libxpm4
apt-get install -y --force-yes libxslt1-dev
apt-get install -y --force-yes libxslt1.1
apt-get install -y --force-yes libxt-dev
apt-get install -y --force-yes libxt6
apt-get install -y --force-yes linux-libc-dev
apt-get install -y --force-yes m4
apt-get install -y --force-yes make
apt-get install -y --force-yes man-db
apt-get install -y --force-yes netcat-openbsd
apt-get install -y --force-yes odbcinst1debian2
apt-get install -y --force-yes openssl
apt-get install -y --force-yes patch
apt-get install -y --force-yes pkg-config
apt-get install -y --force-yes po-debconf
apt-get install -y --force-yes python
apt-get install -y --force-yes python-minimal
apt-get install -y --force-yes python2.7
apt-get install -y --force-yes python2.7-minimal
apt-get install -y --force-yes re2c
apt-get install -y --force-yes unixodbc
apt-get install -y --force-yes unixodbc-dev
apt-get install -y --force-yes uuid-dev
apt-get install -y --force-yes x11-common
apt-get install -y --force-yes x11proto-core-dev
apt-get install -y --force-yes x11proto-input-dev
apt-get install -y --force-yes x11proto-kb-dev
apt-get install -y --force-yes xorg-sgml-doctools
apt-get install -y --force-yes  libjpeg8
apt-get install -y --force-yes xtrans-dev
apt-get install -y --force-yes zlib1g-dev
apt-get install -y --force-yes php5-fpm
apt-get install -y --force-yes libpq-dev
filename='/usr/src/FOS-Streaming'
rm -rf $filename
useradd -s /sbin/nologin -U -d /home/fos-streaming -m fosstreaming > /dev/null
if [ $arch == "x86_64" ]
then
fosunpackfile="fos-streaming_unpack_x84_64.tar.gz"
else
fosunpackfile="fos-streaming_unpack_i686.tar.gz"
fi
wget http://fos-streaming.com/$fosunpackfile -O /home/fos-streaming/fos-streaming_unpack_x84_64.tar.gz
tar -xvf /home/fos-streaming/$fosunpackfile -C /home/fos-streaming/
rm -r /home/fos-streaming/$fosunpackfile
mkdir -p /usr/src/FOS-Streaming
echo 'www-data ALL = (root) NOPASSWD: /usr/local/bin/ffmpeg' >> /etc/sudoers
echo 'www-data ALL = (root) NOPASSWD: /usr/local/bin/ffprobe' >> /etc/sudoers
echo '*/2 * * * * www-data /home/fos-streaming/fos/php/bin/php /home/fos-streaming/fos/www/cron.php' >> /etc/crontab
sed --in-place '/exit 0/d' /etc/rc.local
echo 'sleep 10' >> /etc/rc.local
echo '/home/fos-streaming/fos/nginx/sbin/nginx_fos' >> /etc/rc.local
echo '/home/fos-streaming/fos/php/sbin/php-fpm' >> /etc/rc.local
echo 'exit 0' >> /etc/rc.local
mkdir -p /home/fos-streaming/fos/www/hl
#php install_panel.php
read -rep $'Enter your MySQL password (not use none):' sqlpasswd
echo "mysql-server mysql-server/root_password password $sqlpasswd" | debconf-set-selections
echo "mysql-server mysql-server/root_password_again password $sqlpasswd" | debconf-set-selections
echo "phpmyadmin phpmyadmin/dbconfig-install boolean true" | debconf-set-selections
echo "phpmyadmin phpmyadmin/app-password-confirm password $sqlpasswd" | debconf-set-selections
echo "phpmyadmin phpmyadmin/mysql/admin-pass password $sqlpasswd" | debconf-set-selections
echo "phpmyadmin phpmyadmin/mysql/app-pass password $sqlpasswd" | debconf-set-selections
echo "phpmyadmin phpmyadmin/reconfigure-webserver multiselect none" | debconf-set-selections
apt-get install -y mysql-server
apt-get install -y php5-mysql
apt-get -y install phpmyadmin
# security root localhost acces online
mysql -u root -p"$sqlpasswd" -e "DELETE FROM mysql.user WHERE User='root' AND Host != 'localhost'";
mysql -u root -p"$sqlpasswd" -e "DELETE FROM mysql.user WHERE User=''";
mysql -u root -p"$sqlpasswd" -e "FLUSH PRIVILEGES";
# import sql file
mysql -u root -p"$sqlpasswd" < /home/fos-streaming/fos/www/install.sql
echo  "hostname: localhost, database_name: " fosiv1 " , database_username: "  root  " , database_password " $sqlpasswd
echo "\n "
sed -i 's/zadik/'$sqlpasswd'/g' /home/fos-streaming/fos/www/config.php
cp improvement/nginx.conf /home/fos-streaming/fos/nginx/conf/nginx.conf
cp improvement/php-fpm.conf /home/fos-streaming/fos/php/etc/php-fpm.conf
cp improvement/www.conf /home/fos-streaming/fos/php/etc/pool.d/www.conf
cp improvement/balance.conf /home/fos-streaming/fos/nginx/conf/balance.conf
chmod -R 777 /home/fos-streaming/fos/www/hl
mkdir -p /home/fos-streaming/fos/www/cache
chmod -R 777 /home/fos-streaming/fos/www/cache
chown www-data:www-data /home/fos-streaming/fos/nginx/conf
/home/fos-streaming/fos/php/sbin/php-fpm
/home/fos-streaming/fos/nginx/sbin/nginx_fos
rm -r /home/fos-streaming/fos/www/install.php /home/fos-streaming/fos/www/install.sql
echo "#"
if [ $arch == "x86_64" ]
then
ffmpegfile="ffmpeg-release-64bit-static.tar.xz"
else
ffmpegfile="ffmpeg-release-32bit-static.tar.xz"
fi
wget http://johnvansickle.com/ffmpeg/releases/$ffmpegfile -O /home/fos-streaming/ffmpeg-release-64bit-static.tar.xz
rm -rf  /usr/src/ffmpeg
mkdir -p /usr/src/ffmpeg
tar -xJf /home/fos-streaming/$ffmpegfile -C /usr/src/ffmpeg
cp /usr/src/ffmpeg/ffmpeg*/ffmpeg  /usr/local/bin/ffmpeg
cp /usr/src/ffmpeg/ffmpeg*/ffprobe /usr/local/bin/ffprobe
echo "#"
chmod 755 /usr/local/bin/ffmpeg
chmod 755 /usr/local/bin/ffprobe
echo "#"
chown www-data:root /home/fos-streaming/fos/www
echo "#"
echo "]PASS \n"
echo "******************************************************************************************** \n"
echo "FOS-Streaming installed.. \n"
echo "visit management page: 'http://host:8000' \n"
echo "Login: \n"
echo "Username: admin \n"
echo "Password: admin \n"
echo "database details: \n"
echo "IMPORTANT: After you logged in, go to settings and check your ip-address. \n"
echo "******************************************************************************************** \n"
