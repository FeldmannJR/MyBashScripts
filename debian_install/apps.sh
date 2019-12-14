#!/bin/bash
HOME=/home/feldmann/
APPS=$HOME/apps
if [ -d $APPS ]; then
    exit 0
fi
mkdir -p $APPS
# Bytecode viewer
wget https://github.com/Konloch/bytecode-viewer/releases/download/v2.9.22/Bytecode-Viewer-2.9.22.jar -O $APPS/Bytecode-Viewer.jar

# Copia os .desktop
cp -n $SCRIPT_DIR/apps/*.desktop $HOME/.local/share/applications
