#!/bin/sh

#Incluyo la configuracion
. "$(dirname "$0")"/config.sh

sudo chmod -R 777 $RUTABASE/generated

sudo chown -R bitnami:daemon $RUTABASE

sudo rm -R $RUTABASE/var/cache/*
sudo rm -R $RUTABASE/var/page_cache/*

sudo php $RUTABASE/bin/magento indexer:reindex
sudo php $RUTABASE/bin/magento cache:clean
sudo php $RUTABASE/bin/magento cache:flush

sudo chown -R bitnami:daemon $RUTABASE/var/cache
sudo chmod -R 777 $RUTABASE/var/cache
