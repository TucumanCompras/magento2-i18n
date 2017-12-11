#!/bin/sh

#Incluyo la configuracion
. "$(dirname "$0")"/config.sh

echo "--> borrar cache, generation, di <-------------------------------------------------|||||||||||||||||||||"
sudo rm -R $RUTABASE/var/cache/*
sudo rm -R $RUTABASE/var/generation/*
sudo rm -R $RUTABASE/var/di/*
sudo rm -R $RUTABASE/var/page_cache/*

echo "--> upgrade, compile, deploy <-----------------------------------------------------|||||||||||||||||||||"
sudo php $RUTABASE/bin/magento setup:upgrade
sudo php $RUTABASE/bin/magento setup:di:compile
sudo php $RUTABASE/bin/magento setup:static-content:deploy -f es_ES

echo "--> reindex, clean y flush cache <-------------------------------------------------|||||||||||||||||||||"
sudo php $RUTABASE/bin/magento indexer:reindex
sudo php $RUTABASE/bin/magento cache:clean
sudo php $RUTABASE/bin/magento cache:flush

echo "--> reiniciando servicios <--------------------------------------------------------|||||||||||||||||||||"
sudo /opt/bitnami/ctlscript.sh restart

echo "--> Magento init <-----------------------------------------------------------------|||||||||||||||||||||"
sudo $RUTABASE/var/tucumancompras/shell/magento_init.sh
