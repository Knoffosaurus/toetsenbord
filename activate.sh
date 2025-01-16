#!/bin/bash
# Bepaal het pad naar de script directory
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
source "${SCRIPT_DIR}/.venv/bin/activate"

# Print bevestiging
echo "Virtuele omgeving geactiveerd in: ${SCRIPT_DIR}/.venv" 