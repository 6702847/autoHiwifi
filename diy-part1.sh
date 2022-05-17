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
# fix netdata
rm -rf ./feeds/packages/admin/netdata
svn co https://github.com/DHDAXCW/packages/branches/ok/admin/netdata ./feeds/packages/admin/netdata

echo "src-git OpenAppFilter https://github.com/destan19/OpenAppFilter.git" >> feeds.conf.default






# Add luci-app-smartdns & smartdns
rm -rf packages/net/smartdns
svn co https://github.com/openwrt/packages/trunk/net/smartdns packages/net/smartdns
svn co https://github.com/281677160/openwrt-package/trunk/luci-app-smartdns

# Add luci-app-passwall
git clone --depth=1 https://github.com/xiaorouji/openwrt-passwall
svn co https://github.com/xiaorouji/openwrt-passwall/branches/luci/luci-app-passwall

git clone --depth=1 -b master https://github.com/vernesong/OpenClash

# Add Pandownload
pushd package/lean
svn co https://github.com/immortalwrt/packages/trunk/net/pandownload-fake-server
popd





