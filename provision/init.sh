#!/bin/bash

sudo apt-get -y update && sudo apt-get -y upgrade
sudo apt-get install -y python3

# 後ほど動かすスクリプトでも必要になるので以下をインストール
sudo apt-get install -y python3-pip
