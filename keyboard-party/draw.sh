#!/bin/bash

# Activeer virtuele omgeving
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
source "${SCRIPT_DIR}/../.venv/bin/activate"

# Maak img directory aan
mkdir -p "${SCRIPT_DIR}/img"

# Genereer visualisatie
keymap parse -c 10 -z "${SCRIPT_DIR}/config/zo_mooi.keymap" > "${SCRIPT_DIR}/img/zo_mooi_keymap.yaml"
keymap draw "${SCRIPT_DIR}/img/zo_mooi_keymap.yaml" -c "${SCRIPT_DIR}/config/keymap_drawer.config.yaml" > "${SCRIPT_DIR}/img/zo_mooi_keymap.svg"

# Print bevestiging
echo "Visualisatie gegenereerd in img/zo_mooi_keymap.svg" 