#!/bin/bash

sudo apt-get -y update && sudo apt-get -y upgrade
sudo apt-get install -y python

# 後ほど動かすスクリプトでも必要になるので以下をインストール
sudo apt-get install -y python-pip
