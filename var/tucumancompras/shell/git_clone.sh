#!/bin/sh

#Incluyo la configuracion
RUTABASE=/home/momitoys/public_html

if [ -d "$RUTABASE/temporal" ]; then rm -Rf $RUTABASE/temporal_git; fi
#rm -R $RUTABASE/temporal_git
mkdir -p $RUTABASE/temporal_git
git clone https://github.com/TucumanCompras/magento2-i18n.git $RUTABASE/temporal_git
cp -R $RUTABASE/temporal_git/* $RUTABASE
if [ -d "$RUTABASE/temporal_git" ]; then rm -Rf $RUTABASE/temporal_git; fi
