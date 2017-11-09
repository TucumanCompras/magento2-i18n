# Asignacion de permisos iniciales
DIRBASE="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
echo $DIRBASE
chmod -R 777 .
chown -R bitnami:daemon .
