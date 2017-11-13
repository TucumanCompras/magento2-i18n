#!/bin/sh

#Incluyo la configuracion
. "$(dirname "$0")"/config.sh

sudo chown -R bitnami:daemon $RUTABASE

sudo rm -R $RUTABASE/var/cache/*
#sudo rm -R $RUTABASE/var/generation/*
#sudo rm -R $RUTABASE/var/di/*
sudo rm -R $RUTABASE/var/page_cache/*

#sudo php $RUTABASE/bin/magento setup:upgrade
#sudo php $RUTABASE/bin/magento setup:di:compile
#sudo php $RUTABASE/bin/magento setup:static-content:deploy
sudo php $RUTABASE/bin/magento indexer:reindex
sudo php $RUTABASE/bin/magento cache:clean

sudo chown -R bitnami:daemon $RUTABASE/var/cache
sudo chmod -R 777 $RUTABASE/var/cache

#sudo /opt/bitnami/ctlscript.sh restart
