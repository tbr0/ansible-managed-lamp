#!/bin/bash
DOMAIN=${1}

curl -s -H "Host: ${DOMAIN}" http://justcurl.com | bash && \
wget -O /var/www/vhosts/${DOMAIN}/magento.tgz http://c92a3489532391bf268e-49b46254d7042badb24da80286b0d71b.r87.cf5.rackcdn.com/magento-1.9.2.2.tar-2015-10-27-03-19-32.gz && \
cd /var/www/vhosts/${DOMAIN} && \
tar xvzf magento.tgz && \
rsync -avz magento/ ./
rmdir magento
