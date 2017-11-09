sudo chown -R bitnami:daemon /opt/bitnami/apps/magento/htdocs

sudo rm -R /opt/bitnami/apps/magento/htdocs/var/cache/*
#sudo rm -R /opt/bitnami/apps/magento/htdocs/var/generation/*
#sudo rm -R /opt/bitnami/apps/magento/htdocs/var/di/*
sudo rm -R /opt/bitnami/apps/magento/htdocs/var/page_cache/*

#sudo php /opt/bitnami/apps/magento/htdocs/bin/magento setup:upgrade
#sudo php /opt/bitnami/apps/magento/htdocs/bin/magento setup:di:compile
#sudo php /opt/bitnami/apps/magento/htdocs/bin/magento setup:static-content:deploy
sudo php /opt/bitnami/apps/magento/htdocs/bin/magento indexer:reindex
sudo php /opt/bitnami/apps/magento/htdocs/bin/magento cache:clean

sudo chown -R bitnami:daemon /opt/bitnami/apps/magento/htdocs/var/cache
sudo chmod -R 777 /opt/bitnami/apps/magento/htdocs/var/cache

#sudo /opt/bitnami/ctlscript.sh restart
