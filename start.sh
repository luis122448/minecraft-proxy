#!/bin/bash

# Variables
REMOTE_USER="tu_usuario"          # Usuario SSH en el VPS
REMOTE_HOST="tu_ip_del_vps"       # IP del VPS
REMOTE_PORT="22"                  # Puerto SSH del VPS
LOCAL_PORT="25565"                # Puerto de Minecraft en el VPS
LOCAL_SERVER_IP="tu_ip_local"     # IP del servidor local

# Establece el túnel SSH
ssh -N -R $LOCAL_PORT:localhost:$LOCAL_PORT $REMOTE_USER@$REMOTE_HOST -p $REMOTE_PORT

# Mantiene el contenedor en ejecución
tail -f /dev/null
