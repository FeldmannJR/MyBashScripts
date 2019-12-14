#!/bin/bash
set -x
export TEMP_DIR=./temp  
DEBS=$TEMP_DIR/debs
rm -rf $DEBS
mkdir -p $DEBS
cd $DEBS
# Steam
wget https://steamcdn-a.akamaihd.net/client/installer/steam.deb
# Slack
wget https://downloads.slack-edge.com/linux_releases/slack-desktop-4.2.0-amd64.deb
# Discord
wget https://dl.discordapp.net/apps/linux/0.0.9/discord-0.0.9.deb
# Installing
dpkg -i *.deb
# Cleaning Installation Files
cd $TEMP_DIR
rm -rf $DEBS
# Fix dependencies
apt-get --fix-broken install -y
