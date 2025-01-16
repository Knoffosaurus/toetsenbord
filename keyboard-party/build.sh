#!/bin/bash

# Activeer virtuele omgeving
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
source "${SCRIPT_DIR}/../.venv/bin/activate"

# Print bevestiging
echo "Virtuele omgeving geactiveerd"

# Build firmware
west build -p -b nice_nano_v2 -- -DSHIELD=zo_mooi_left
west build -d build/right -p -b nice_nano_v2 -- -DSHIELD=zo_mooi_right

# Genereer visualisatie
keymap parse -c 10 -z config/zo_mooi.keymap > img/zo_mooi_keymap.yaml
keymap draw img/zo_mooi_keymap.yaml > img/zo_mooi_keymap.svg

# Print bevestiging
echo "Firmware gebouwd en visualisatie gegenereerd. Je bent zo prachtig!"
