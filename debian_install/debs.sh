#!/bin/bash
set -x
export SCRIPT_DIR="$( cd "$(dirname "$0")" ; pwd -P )"
export TEMP_DIR=$SCRIPT_DIR/temp  
DEBS=$TEMP_DIR/debs
# Delete old versions
rm -rf $DEBS
mkdir -p $DEBS
cd $DEBS

#=================================================
# Steam
wget https://steamcdn-a.akamaihd.net/client/installer/steam.deb
# Slack
wget https://downloads.slack-edge.com/linux_releases/slack-desktop-4.2.0-amd64.deb
# Discord
wget https://dl.discordapp.net/apps/linux/0.0.9/discord-0.0.9.deb
# Multimc
wget https://files.multimc.org/downloads/multimc_1.3-1.deb
#=================================================

# Installing
dpkg -i *.deb
# Cleaning Installation Files
cd $TEMP_DIR
# Fix dependencies
apt-get --fix-broken install -y
