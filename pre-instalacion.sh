# Asignacion de permisos iniciales
sudo find . -type f -exec chmod 644 {} \;
sudo find . -type d -exec chmod 755 {} \;
sudo find ./var -type d -exec chmod 777 {} \;
sudo find ./app/etc -type f -exec chmod 777 {} \;
sudo find ./var -type f -exec chmod 777 {} \;
sudo find ./pub/media -type f -exec chmod 777 {} \;
sudo find ./pub/static -type f -exec chmod 777 {} \;
sudo find ./generated -type f -exec chmod 777 {} \;
sudo find ./pub/media -type d -exec chmod 777 {} \;
sudo find ./pub/static -type d -exec chmod 777 {} \;
sudo chmod 777 ./app/etc
sudo chmod 644 ./app/etc/*.xml
sudo chown -R :daemon .
sudo chmod u+x bin/magento
