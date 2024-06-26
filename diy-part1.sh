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

# Add a feed source
echo 'src-git helloworld https://github.com/fw876/helloworld;master' >>feeds.conf.default
#echo 'src-git leanpackages https://github.com/coolsnowwolf/packages' >>feeds.conf.default
#echo 'src-git leanluci https://github.com/coolsnowwolf/luci' >>feeds.conf.default
#svn checkout https://github.com/coolsnowwolf/lede/trunk/package/lean package/lean

#echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall' >>feeds.conf.default
