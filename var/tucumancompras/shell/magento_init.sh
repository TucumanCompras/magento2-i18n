#!/bin/sh

#Incluyo la configuracion
. "$(dirname "$0")"/config.sh

# Actualizo las rutas de MySQL
#mysql -u$BDUSER -p$BDPASS -e 'UPDATE core_config_data SET value="http://'$URLBASE'/" WHERE path="web/unsecure/base_url" AND scope_id=0' $BDNAME
#mysql -u$BDUSER -p$BDPASS -e 'UPDATE core_config_data SET value="https://'$URLBASE'/" WHERE path="web/secure/base_url" AND  scope_id=0' $BDNAME
#mysql -u$BDUSER -p$BDPASS -e 'UPDATE core_config_data SET value="http://agropac.tucumancompras.com.ar/" WHERE path="web/unsecure/base_url" AND scope_id=2' $BDNAME
#mysql -u$BDUSER -p$BDPASS -e 'UPDATE core_config_data SET value="https://agropac.tucumancompras.com.ar/" WHERE path="web/secure/base_url" AND  scope_id=2' $BDNAME
#mysql -u$BDUSER -p$BDPASS -e 'UPDATE core_config_data SET value="http://www.solmar.com.ar/" WHERE path="web/unsecure/base_url" AND scope_id=3' $BDNAME
#mysql -u$BDUSER -p$BDPASS -e 'UPDATE core_config_data SET value="https://www.solmar.com.ar/" WHERE path="web/secure/base_url" AND  scope_id=3' $BDNAME
#mysql -u$BDUSER -p$BDPASS -e 'UPDATE core_config_data SET value="http://whitebox.tucumancompras.com.ar/" WHERE path="web/unsecure/base_url" AND scope_id=4' $BDNAME
#mysql -u$BDUSER -p$BDPASS -e 'UPDATE core_config_data SET value="https://whitebox.tucumancompras.com.ar/" WHERE path="web/secure/base_url" AND  scope_id=4' $BDNAME

#Seteo de permisos de archivo
chown -R bitnami:daemon $RUTABASE

cd $RUTABASE
sudo find . -type f -exec chmod 644 {} \;
sudo find . -type d -exec chmod 755 {} \;
sudo find ./var -type d -exec chmod 777 {} \;
sudo find ./pub/media -type d -exec chmod 777 {} \;
sudo find ./pub/static -type d -exec chmod 777 {} \;

sudo chmod 777 $RUTABASE/app/etc
sudo chmod 777 $RUTABASE/app/etc/env.php
sudo chmod 644 $RUTABASE/app/etc/*.xml

sudo chmod u+x bin/magento

chmod -R g+w $RUTABASE/pub
chmod -R g+w $RUTABASE/var

chmod 777 -R $RUTABASE/var/tucumancompras/shell/*.sh

chmod 777 -R $RUTABASE/var/import
chmod 777 -R $RUTABASE/var/cache
chmod 777 $RUTABASE/magento2-theme-manager.sh
