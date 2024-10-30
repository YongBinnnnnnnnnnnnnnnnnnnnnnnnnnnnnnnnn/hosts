#!/bin/bash

echo "DO NOT USE THIS SCRIPT"
echo "IT IS MADE FOR TESTING PURPOSE ONLY."
exit 0

echo "0.0.0.0 news.163.com" >> /etc/hosts
echo "0.0.0.0 assets.msn.cn" >> /etc/hosts
#
curl "https://www.digwebinterface.com/?hostnames=github.com&type=a&ns=resolver&useresolver=9.9.9.10&nameservers="|grep 'none">github'|sed -r -e "s|.*\t([^<]*).*|\1 github.com|"|sudo tee /etc/hosts
