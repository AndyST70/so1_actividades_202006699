#!/bin/bash

#? user GIT HUB
GITHUB_USER="AndyST70"

API_URL="https://api.github.com/users/$GITHUB_USER"
USER_DATA=$(curl -s "$API_URL")

#! oBTENEMOS LOS DATOS
GITHUB_NAME=$(echo "$USER_DATA" | jq -r .login)
USER_ID=$(echo "$USER_DATA" | jq -r .id)
CREATED_AT=$(echo "$USER_DATA" | jq -r .created_at)

echo "Hola $GITHUB_NAME. User ID: $USER_ID. Cuenta fue creada el: $CREATED_AT."

LOG_DIR="/tmp/$(date +'%Y%m%d')"
mkdir -p "$LOG_DIR"

LOG_FILE="$LOG_DIR/saludos.log"
echo "Hola $GITHUB_NAME. User ID: $USER_ID. Cuenta fue creada el: $CREATED_AT." >> "$LOG_FILE"

SCRIPT_PATH=$(realpath "$0")

# CRONJOB
(crontab -l ; echo "*/5 * * * * $SCRIPT_PATH") | crontab -

echo "Script configurado correctamente. Se ejecutará cada 5 minutos."
