#!/bin/sh

#Incluyo la configuracion
. "$(dirname "$0")"/config.sh

rm -R $RUTABASE/temporal
mkdir -p $RUTABASE/temporal
cd $RUTABASE/temporal
git clone https://github.com/TucumanCompras/magento2.git .
cp -R $RUTABASE/temporal/* $RUTABASE
sudo rm -R $RUTABASE/temporal
