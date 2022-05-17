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
echo "src-git OpenClash https://github.com/vernesong/OpenClash.git" >> feeds.conf.default
echo "src-git OpenAppFilter https://github.com/destan19/OpenAppFilter.git" >> feeds.conf.default
rm -rf packages/net/smartdns
svn co https://github.com/openwrt/packages/trunk/net/smartdns packages/net/smartdns





