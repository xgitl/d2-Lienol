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
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

find openwrt-package/other/lean -name "*Music*" -exec rm -rf {} ;

# Add a feed source
# echo 'src-svn adbyby_plus https://github.com/coolsnowwolf/luci/trunk/applications/luci-app-adbyby-plus' >>feeds.conf.default
echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall;luci' >>feeds.conf.default
echo 'src-git passwall_packages https://github.com/xiaorouji/openwrt-passwall;packages' >>feeds.conf.default
echo 'src-git neteasemusic https://github.com/cnsilvan/luci-app-unblockneteasemusic.git' >>feeds.conf.default
git clone https://github.com/ilxp/luci-app-ikoolproxy.git package/luci-app-ikoolproxy
