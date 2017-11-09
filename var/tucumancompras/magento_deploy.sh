#echo "--> Magento init <-----------------------------------------------------------------|||||||||||||||||||||"
#sudo /opt/bitnami/apps/magento/htdocs/var/tucumancompras/shell/magento_init.sh

echo "--> borrar cache, generation, di <-------------------------------------------------|||||||||||||||||||||"
sudo rm -R /opt/bitnami/apps/magento/htdocs/var/cache/*
sudo rm -R /opt/bitnami/apps/magento/htdocs/var/generation/*
sudo rm -R /opt/bitnami/apps/magento/htdocs/var/di/*
sudo rm -R /opt/bitnami/apps/magento/htdocs/var/page_cache/*

echo "--> upgrade, compile, deploy <-----------------------------------------------------|||||||||||||||||||||"
sudo php /opt/bitnami/apps/magento/htdocs/bin/magento setup:upgrade
sudo php /opt/bitnami/apps/magento/htdocs/bin/magento setup:di:compile
sudo php /opt/bitnami/apps/magento/htdocs/bin/magento setup:static-content:deploy es_ES

echo "--> reindex, clean y flush cache <-------------------------------------------------|||||||||||||||||||||"
sudo php /opt/bitnami/apps/magento/htdocs/bin/magento indexer:reindex
sudo php /opt/bitnami/apps/magento/htdocs/bin/magento cache:clean
sudo php /opt/bitnami/apps/magento/htdocs/bin/magento cache:flush

echo "--> reiniciando servicios <--------------------------------------------------------|||||||||||||||||||||"
sudo /opt/bitnami/ctlscript.sh restart

echo "--> Magento init <-----------------------------------------------------------------|||||||||||||||||||||"
sudo /opt/bitnami/apps/magento/htdocs/var/tucumancompras/shell/magento_init.sh
