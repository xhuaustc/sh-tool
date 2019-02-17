#!/bin/bash
apt-get update
apt install python3-pip
pip3 install https://github.com/shadowsocks/shadowsocks/archive/master.zip
cp shadowsocks.json /etc/shadowsocks.json
ssserver -c /etc/shadowsocks.json -d start
