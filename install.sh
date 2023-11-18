#!/bin/bash
# install.sh - Installer for diffchecker

INSTALL_DIR="/usr/local/bin"
SCRIPT_URL="https://raw.githubusercontent.com/ugoi/diffchecker/main/diffchecker.sh"

echo "Downloading diffchecker..."
curl -L $SCRIPT_URL -o $INSTALL_DIR/diffchecker

if [ -f "$INSTALL_DIR/diffchecker" ]; then
    chmod +x $INSTALL_DIR/diffchecker
    echo "diffchecker installed successfully."
else
    echo "Failed to download diffchecker."
    exit 1
fi
