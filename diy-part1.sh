#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#

# Uncomment a feed source
# sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default
# add helloworld

# theme argon
# rm -rf  package/lean/luci-theme-argon 
# git clone  https://github.com/jerrykuku/luci-theme-argon  package/lean/luci-theme-argon


#sed -i "/helloworld/d" "feeds.conf.default"
#sed -i "/passwall/d" "feeds.conf.default"
#sed -i "/openclash/d" "feeds.conf.default"
#sed -i "/pushbot/d" "feeds.conf.default"
#sed -i "/smartdns/d" "feeds.conf.default"

#echo "src-git helloworld https://github.com/fw876/helloworld.git" >> feeds.conf.default
echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall.git' >>feeds.conf.default
#echo "src-git pushbot  https://github.com/tty228/luci-app-serverchan.git" >> feeds.conf.default
echo "src-git OpenClash https://github.com/vernesong/OpenClash.git" >> feeds.conf.default
echo "src-git smartdns https://github.com/pymumu/smartdns" >> feeds.conf.default
echo "src-git OpenAppFilter https://github.com/destan19/OpenAppFilter.git" >> feeds.conf.default
git clone  https://github.com/pymumu/openwrt-smartdns ./feeds/packages/net/smartdns/
git clone https://github.com/pymumu/luci-app-smartdns -b lede feeds/luci/applications/luci-app-smartdns/



