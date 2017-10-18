# Asignacion de permisos iniciales
DIRBASE=$(dirname $0)
sudo find $DIRBASE -type f -exec chmod 644 {} \;
sudo find $DIRBASE -type d -exec chmod 755 {} \;
sudo find $DIRBASE/var -type d -exec chmod 777 {} \;
sudo find $DIRBASE/app/etc -type f -exec chmod 777 {} \;
sudo find $DIRBASE/var -type f -exec chmod 777 {} \;
sudo find $DIRBASE/pub/media -type f -exec chmod 777 {} \;
sudo find $DIRBASE/pub/static -type f -exec chmod 777 {} \;
sudo find $DIRBASE/generated -type f -exec chmod 777 {} \;
sudo find $DIRBASE/pub/media -type d -exec chmod 777 {} \;
sudo find $DIRBASE/pub/static -type d -exec chmod 777 {} \;
sudo chmod 777 $DIRBASE/app/etc
sudo chmod 644 $DIRBASE/app/etc/*.xml
sudo chown -R :daemon $DIRBASE
sudo chmod u+x $DIRBASE/bin/magento
