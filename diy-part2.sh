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
sed -i 's/192.168.1.1/192.168.31.1/g' package/base-files/files/bin/config_generate

# 修改连接数数
#sed -i 's/net.netfilter.nf_conntrack_max=.*/net.netfilter.nf_conntrack_max=65535/g' package/kernel/linux/files/sysctl-nf-conntrack.conf
#修正连接数（by ベ七秒鱼ベ）
sed -i '/customized in this file/a net.netfilter.nf_conntrack_max=65535' package/base-files/files/etc/sysctl.conf

git clone https://github.com/fancylaputa/ddns-scripts_aliyun package/ddns-scripts_aliyun
# git clone https://github.com/pexcn/openwrt-chinadns-ng.git package/chinadns-ng

# Modify hostname
#sed -i 's/OpenWrt/OpenWrt/g' package/base-files/files/bin/config_generate
# Modify the version number
#sed -i "s/OpenWrt /MuaChow build $(TZ=UTC-8 date "+%Y.%m.%d") @ OpenWrt /g" package/lean/default-settings/files/zzz-default-settings

#添加额外非必须软件包
#git clone https://github.com/rufengsuixing/luci-app-adguardhome.git package/luci-app-adguardhome
#git clone https://github.com/garypang13/luci-app-bypass package/luci-app-bypass
#git clone https://github.com/vernesong/OpenClash.git package/OpenClash
#git clone https://github.com/jerrykuku/luci-app-jd-dailybonus.git package/luci-app-jd-dailybonus
#git clone https://github.com/sirpdboy/luci-app-netdata.git package/luci-app-netdata
#git clone https://github.com/kiddin9/luci-app-dnsfilter.git package/luci-app-dnsfilter
#git clone https://github.com/kenzok8/openwrt-packages.git package/openwrt-packages
#VSSR
#git clone https://github.com/jerrykuku/lua-maxminddb.git package/lua-maxminddb
#git clone https://github.com/jerrykuku/luci-app-vssr.git package/luci-app-vssr
#git clone https://github.com/riverscn/openwrt-iptvhelper.git package/openwrt-iptvhelper
#添加smartdns
#git clone https://github.com/pymumu/openwrt-smartdns package/smartdns
#git clone -b lede https://github.com/pymumu/luci-app-smartdns.git package/luci-app-smartdns
#git clone -b luci https://github.com/pexcn/openwrt-chinadns-ng.git package/luci-app-chinadns-ng
#git clone https://github.com/sensec/ddns-scripts_aliyun.git package/ddns-scripts_aliyun

#mkdir -p package/helloworld
#for i in "dns2socks" "microsocks" "ipt2socks" "pdnsd-alt" "redsocks2"; do \
#  svn checkout "https://github.com/immortalwrt/packages/trunk/net/$i" "package/helloworld/$i"; \
#done

