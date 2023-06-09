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

sed -i '/^src-git other/d' feeds.conf.default

# Add a feed source
echo 'src-git passwall_packages https://github.com/xiaorouji/openwrt-passwall;packages' >>feeds.conf.default
echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall;luci' >>feeds.conf.default
echo 'src-git neteasemusic https://github.com/cnsilvan/luci-app-unblockneteasemusic' >>feeds.conf.default
svn co https://github.com/Lienol/openwrt-package/branches/other/lean/luci-app-turboacc package/luci-app-turboacc
svn co https://github.com/Lienol/openwrt-package/branches/other/lean/adbyby package/adbyby
svn co https://github.com/Lienol/openwrt-package/branches/other/lean/luci-app-adbyby-plus package/luci-app-adbyby-plus
svn co https://github.com/Lienol/openwrt-luci/trunk/applications/luci-app-watchcat package/luci-app-watchcat
git clone https://github.com/kongfl888/luci-app-adguardhome package/luci-app-adguardhome
# git clone https://github.com/ilxp/luci-app-ikoolproxy package/luci-app-ikoolproxy
