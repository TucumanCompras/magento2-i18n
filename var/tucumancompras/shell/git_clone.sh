#!/bin/sh

#Incluyo la configuracion
. "$(dirname "$0")"/config.sh

if [ -d "$RUTABASE/temporal" ]; then rm -Rf $RUTABASE/temporal; fi
#rm -R $RUTABASE/temporal
mkdir -p $RUTABASE/temporal
git clone https://github.com/TucumanCompras/magento2.git $RUTABASE/temporal
cp -R $RUTABASE/temporal/* $RUTABASE
if [ -d "$RUTABASE/temporal" ]; then rm -Rf $RUTABASE/temporal; fi
chmod -R 777 $RUTABASE/var/tucumancompras/shell/*.sh
