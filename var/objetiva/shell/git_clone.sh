#!/bin/sh

#Incluyo la configuracion
RUTASCRIPT="$( cd "$( dirname "$0" )" && pwd )"
cd $RUTASCRIPT
echo "ruta script :" $RUTASCRIPT
cd "$(dirname "$(pwd)")"
cd "$(dirname "$(pwd)")"
cd "$(dirname "$(pwd)")"
RUTABASE="$( pwd )"
echo "ruta base :" $RUTABASE

if [ -d "$RUTABASE/temporal_git" ]; then rm -Rf $RUTABASE/temporal_git; fi
mkdir -p $RUTABASE/temporal_git
git clone https://github.com/TucumanCompras/magento2-i18n.git $RUTABASE/temporal_git
cp -R $RUTABASE/temporal_git/* $RUTABASE
if [ -d "$RUTABASE/temporal_git" ]; then rm -Rf $RUTABASE/temporal_git; fi
