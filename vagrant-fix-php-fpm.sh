#!/bin/bash -eu

mkdir /var/run/php-fpm
chown -R www-data /var/run/php-fpm
systemctl restart php-fpm
