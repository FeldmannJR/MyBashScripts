#!/bin/bash
export TEMP_DIR=./temp  
DEBS=$TEMP_DIR/debs
mkdir -p $DEBS
cd $DEBS
wget https://downloads.slack-edge.com/linux_releases/slack-desktop-4.2.0-amd64.deb
dpkg -i *.deb
cd ..
rm -rf $DEBS
apt-get --fix-broken install -y
