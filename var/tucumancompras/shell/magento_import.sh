#!/bin/sh

#Incluyo la configuracion
. "$(dirname "$0")"/config.sh

echo "Asignando permisos..."
sudo chmod -R 777 $RUTABASE/var/import/*
echo "renombrando a minusculas los archivos de imágenes..."
find $RUTABASE/var/import/solmar/images -depth -exec rename 's/(.*)\/([^\/]*)/$1\/\L$2/' {} \;
echo "Importando CSV en Magento..."
sudo php -f $RUTABASE/bin/magento import:job:run
echo "Ejecutando _mag_clea..."
sudo $RUTABASE/var/tucumancompras/shell/magento_clean.sh
