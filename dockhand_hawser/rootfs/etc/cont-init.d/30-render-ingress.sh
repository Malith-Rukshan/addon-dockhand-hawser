#!/usr/bin/with-contenv bashio
# shellcheck shell=bash
set -e

port="$(bashio::config 'port')"
sed -i "s|__STANDARD_PORT__|${port}|g" /var/www/index.html
