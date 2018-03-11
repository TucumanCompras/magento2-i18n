#!/bin/sh

#Incluyo la configuracion
. "$(dirname "$0")"/config.sh

# Actualizo las rutas de MySQL

mysql -u$BDUSER -p$BDPASS $BDNAME -e 'delete from core_config_data where path like "%base%" and scope <> "default";'

sudo -u bitnami n98-magerun2.phar config:store:set --scope default --scope-id 0 web/unsecure/base_url http://dev.tucumancompras.com.ar/
sudo -u bitnami n98-magerun2.phar config:store:set --scope default --scope-id 0 web/secure/base_url https://dev.tucumancompras.com.ar/
sudo -u bitnami n98-magerun2.phar config:store:set --scope default --scope-id 0 web/unsecure/base_link_url {{unsecure_base_url}}
sudo -u bitnami n98-magerun2.phar config:store:set --scope default --scope-id 0 web/unsecure/base_static_url {{unsecure_base_url}}pub/static/
sudo -u bitnami n98-magerun2.phar config:store:set --scope default --scope-id 0 web/unsecure/base_media_url {{unsecure_base_url}}pub/media/
sudo -u bitnami n98-magerun2.phar config:store:set --scope default --scope-id 0 web/secure/base_link_url {{secure_base_url}}
sudo -u bitnami n98-magerun2.phar config:store:set --scope default --scope-id 0 web/secure/base_static_url {{secure_base_url}}pub/static/
sudo -u bitnami n98-magerun2.phar config:store:set --scope default --scope-id 0 web/secure/base_media_url {{secure_base_url}}pub/media/

sudo -u bitnami n98-magerun2.phar config:store:set --scope websites --scope-id 1 web/unsecure/base_url http://dev.tucumancompras.com.ar/
sudo -u bitnami n98-magerun2.phar config:store:set --scope websites --scope-id 1 web/secure/base_url https://dev.tucumancompras.com.ar/

sudo -u bitnami n98-magerun2.phar config:store:set --scope websites --scope-id 2 web/unsecure/base_url http://solmar.tucumancompras.com.ar/
sudo -u bitnami n98-magerun2.phar config:store:set --scope websites --scope-id 2 web/secure/base_url https://solmar.tucumancompras.com.ar/

sudo -u bitnami n98-magerun2.phar config:store:set --scope websites --scope-id 3 web/unsecure/base_url http://tiendamix.tucumancompras.com.ar/
sudo -u bitnami n98-magerun2.phar config:store:set --scope websites --scope-id 3 web/secure/base_url https://tiendamix.tucumancompras.com.ar/

sudo -u bitnami n98-magerun2.phar config:store:set --scope websites --scope-id 4 web/unsecure/base_url http://agropac.tucumancompras.com.ar/
sudo -u bitnami n98-magerun2.phar config:store:set --scope websites --scope-id 4 web/secure/base_url https://agropac.tucumancompras.com.ar/

sudo -u bitnami n98-magerun2.phar config:store:set --scope websites --scope-id 5 web/unsecure/base_url http://muebleriamobel.tucumancompras.com.ar/
sudo -u bitnami n98-magerun2.phar config:store:set --scope websites --scope-id 5 web/secure/base_url https://muebleriamobel.tucumancompras.com.ar/

sudo -u bitnami n98-magerun2.phar config:store:set --scope websites --scope-id 6 web/unsecure/base_url http://www.madonnas.com.ar/
sudo -u bitnami n98-magerun2.phar config:store:set --scope websites --scope-id 6 web/secure/base_url https://www.madonnas.com.ar/

sudo -u bitnami n98-magerun2.phar config:store:set --scope websites --scope-id 7 web/unsecure/base_url http://www.beautyperfumerias.com.ar/
sudo -u bitnami n98-magerun2.phar config:store:set --scope websites --scope-id 7 web/secure/base_url https://www.beautyperfumerias.com.ar/

#Seteo de permisos de archivo
chown -R bitnami:daemon $RUTABASE

cd $RUTABASE
sudo find $RUTABASE -type f -exec chmod 644 {} \;
sudo find $RUTABASE -type d -exec chmod 755 {} \;
sudo find $RUTABASE/var -type d -exec chmod 777 {} \;
sudo find $RUTABASE/pub/media -type d -exec chmod 777 {} \;
sudo find $RUTABASE/pub/static -type d -exec chmod 777 {} \;

sudo chmod 777 $RUTABASE/app/etc
sudo chmod 777 $RUTABASE/app/etc/env.php
sudo chmod 644 $RUTABASE/app/etc/*.xml

sudo chmod u+x $RUTABASE/bin/magento

chmod -R g+w $RUTABASE/pub
chmod -R g+w $RUTABASE/var

chmod 777 -R $RUTABASE/var/tucumancompras/shell/*.sh

chmod 777 -R $RUTABASE/var/import
chmod 777 -R $RUTABASE/var/cache
chmod 777 $RUTABASE/magento2-theme-manager.sh
sudo -u bitnami n98-magerun2.phar config:store:set --scope websites --scope-id 6 web/unsecure/base_url http://madonnas.tucumancompras.com.ar/
sudo -u bitnami n98-magerun2.phar config:store:set --scope websites --scope-id 6 web/secure/base_url https://madonnas.tucumancompras.com.ar/

sudo -u bitnami n98-magerun2.phar config:store:set --scope websites --scope-id 7 web/unsecure/base_url http://beautyperfumerias.tucumancompras.com.ar/
sudo -u bitnami n98-magerun2.phar config:store:set --scope websites --scope-id 7 web/secure/base_url https://beautyperfumerias.tucumancompras.com.ar/

#Seteo de permisos de archivo
chown -R bitnami:daemon $RUTABASE

cd $RUTABASE
sudo find $RUTABASE -type f -exec chmod 644 {} \;
sudo find $RUTABASE -type d -exec chmod 755 {} \;
sudo find $RUTABASE/var -type d -exec chmod 777 {} \;
sudo find $RUTABASE/pub/media -type d -exec chmod 777 {} \;
sudo find $RUTABASE/pub/static -type d -exec chmod 777 {} \;

sudo chmod 777 $RUTABASE/app/etc
sudo chmod 777 $RUTABASE/app/etc/env.php
sudo chmod 644 $RUTABASE/app/etc/*.xml

sudo chmod u+x $RUTABASE/bin/magento

chmod -R g+w $RUTABASE/pub
chmod -R g+w $RUTABASE/var

chmod 777 -R $RUTABASE/var/tucumancompras/shell/*.sh

chmod 777 -R $RUTABASE/var/import
chmod 777 -R $RUTABASE/var/cache
chmod 777 $RUTABASE/magento2-theme-manager.sh

chmod 777 $RUTABASE/dpl.sh
chmod 777 -R $RUTABASE/generated

echo "-=[Fin de magento_init.sh]=-"
