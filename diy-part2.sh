#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#

# Modify default IP
sed -i 's/192.168.1.1/192.168.100.1/g' package/base-files/files/bin/config_generate
git clone https://github.com/fw876/helloworld.git package/lean/luci-app-ssr-plus
git clone https://github.com/syncthing/syncthing.git package/lean/syncthing
git clone https://github.com/openwrt/luci/tree/openwrt-19.07/applications/luci-app-watchcat.git package/lean/luci-app-watchcat
git clone https://openwrt.org/packages/pkgdata/watchcat package/lean/watchcat
