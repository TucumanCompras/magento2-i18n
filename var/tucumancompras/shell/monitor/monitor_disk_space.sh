#!/bin/bash
CURRENT=$(df / | grep / | awk '{ print $5}' | sed 's/%//g')
THRESHOLD=80

if [ "$CURRENT" -gt "$THRESHOLD" ] ; then
    mail -s '[TC-monitor] Alerta de espacio en disco' luishelguera@objetiva.com.ar << EOF
El espacio disponible en la partición del disco se está agotando. Usada: $CURRENT%
EOF
fi
