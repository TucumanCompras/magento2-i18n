#!/bin/sh

#Incluyo la configuracion
. "$(dirname "$0")"/config.sh

sudo $RUTABASE/var/tucumancompras/shell/monitor_disk_space.sh
