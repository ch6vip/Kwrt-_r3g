#!/bin/bash

shopt -s extglob

SHELL_FOLDER=$(dirname $(readlink -f "$0"))


sed -i "s/DEVICE_MODEL := HC5962$/DEVICE_MODEL := HC5962 \/ B70/" target/linux/ramips/image/mt7621.mk

sh -c "curl -sfL https://github.com/openwrt/openwrt/commit/2e6d19ee32399e37c7545aefc57d41541a406d55.patch | patch -d './' -p1 --forward" || true

# AdguardHome
cd ./luci-app-adguardhome/root/usr
mkdir -p ./bin/AdGuardHome && cd ./bin/AdGuardHome
ADG_VER=$(curl -sfL https://api.github.com/repos/AdguardTeam/AdGuardHome/releases 2>/dev/null | grep 'tag_name' | egrep -o "v[0-9].+[0-9.]" | awk 'NR==1')
curl -sfL -o /tmp/AdGuardHome_linux.tar.gz https://github.com/AdguardTeam/AdGuardHome/releases/download/${ADG_VER}/AdGuardHome_linux_mipsle_softfloat.tar.gz
tar -zxf /tmp/*.tar.gz -C /tmp/ && chmod +x /tmp/AdGuardHome/AdGuardHome
upx_latest_ver="$(curl -sfL https://api.github.com/repos/upx/upx/releases/latest 2>/dev/null | egrep 'tag_name' | egrep '[0-9.]+' -o 2>/dev/null)"
curl -sfL -o /tmp/upx-${upx_latest_ver}-amd64_linux.tar.xz "https://github.com/upx/upx/releases/download/v${upx_latest_ver}/upx-${upx_latest_ver}-amd64_linux.tar.xz"
xz -d -c /tmp/upx-${upx_latest_ver}-amd64_linux.tar.xz | tar -x -C "/tmp"
/tmp/upx-${upx_latest_ver}-amd64_linux/upx --ultra-brute /tmp/AdGuardHome/AdGuardHome > /dev/null 2>&1
mv /tmp/AdGuardHome/AdGuardHome ./ && rm -rf /tmp/AdGuardHome
#cd $GITHUB_WORKSPACE/openwrt && cd feeds/luci/applications/luci-app-wrtbwmon
#sed -i 's/ selected=\"selected\"//g' ./luasrc/view/wrtbwmon/wrtbwmon.htm && sed -i 's/\"1\"/\"1\" selected=\"selected\"/g' ./luasrc/view/wrtbwmon/wrtbwmon.htm
#sed -i 's/interval: 5/interval: 1/g' ./htdocs/luci-static/wrtbwmon/wrtbwmon.js
