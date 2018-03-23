#!/bin/sh

#Incluyo la configuracion
. "$(dirname "$0")"/config.sh

alias mage="sudo php -d memory_limit=-1 -f $RUTABASE/bin/magento"

echo "--> borrar cache, generation, di <-------------------------------------------------|||||||||||||||||||||"
sudo chmod -R 775 $RUTABASE/pub/static/ $RUTABASE/var/ $RUTABASE/pub/media/ $RUTABASE/generated/
php -r "opcache_reset();"

sudo rm -R $RUTABASE/var/view_preprocessed/*
sudo rm -R $RUTABASE/var/cache/*
sudo rm -R $RUTABASE/var/page_cache/*
sudo rm -R $RUTABASE/var/di/*
sudo rm -R $RUTABASE/var/tmp/*
sudo rm -R $RUTABASE/var/generation/*
sudo rm -R $RUTABASE/pub/static/frontend/*

echo "--> upgrade, compile, deploy <-----------------------------------------------------|||||||||||||||||||||"
mage deploy:mode:set developer;
mage setup:di:compile
mage setup:static-content:deploy -f es_ES;
mage cache:flush &
mage indexer:reindex &
mage setup:upgrade &&
mage setup:db-data:upgrade &&
mage dev:source-theme:deploy es_ES &&
chmod -R 775 $RUTABASE/pub/static/ $RUTABASE/pub/media/ $RUTABASE/var/ $RUTABASE/generated/

echo "--> reindex, clean y flush cache <-------------------------------------------------|||||||||||||||||||||"

echo "--> reiniciando servicios <--------------------------------------------------------|||||||||||||||||||||"
sudo /opt/bitnami/ctlscript.sh restart

echo "--> Magento init <-----------------------------------------------------------------|||||||||||||||||||||"
sudo $RUTABASE/var/tucumancompras/shell/magento_init.sh
