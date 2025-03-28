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
# sed -i '$a src-git small8 https://github.com/kenzok8/small-package' feeds.conf.default

# 移除要替换的包
# rm -rf feeds/packages/lang/golang

# golong1.24依赖
# git clone https://github.com/sbwml/packages_lang_golang -b 24.x feeds/packages/lang/golang

# 自定义软件源
git clone --depth 1 -b main https://github.com/QiYueYiya/openwrt-packages package/openwrt-packages
# Mosdns
#rm -rf feeds/packages/lang/golang
#git clone https://github.com/sbwml/packages_lang_golang -b 23.x feeds/packages/lang/golang
rm -rf feeds/packages/net/mosdns
rm -rf feeds/packages/net/v2ray-geodata
git clone https://github.com/sbwml/luci-app-mosdns -b v5 package/mosdns
git clone https://github.com/sbwml/v2ray-geodata package/v2ray-geodata
# Easytier
git clone --depth 1 -b main https://github.com/EasyTier/luci-app-easytier.git luci-app-easytier
mv luci-app-easytier/easytier package/easytier
mv luci-app-easytier/luci-app-easytier package/luci-app-easytier
rm -rf luci-app-easytier
# 自定义软件源
# git clone --depth 1 -b main https://github.com/xiaorouji/openwrt-passwall-packages package/openwrt-passwall-packages

# passwall
#git clone --depth 1 -b main https://github.com/xiaorouji/openwrt-passwall.git luci-app-passwall
# mv luci-app-passwall/passwall package/passwall
# mv luci-app-passwall/luci-app-passwall package/luci-app-passwall
# rm -rf luci-app-passwall
# passwall2
git clone --depth 1 -b main https://github.com/xiaorouji/openwrt-passwall2 luci-app-passwall2
#mv luci-app-passwall2/passwall2 package/passwall2
#mv luci-app-passwall2/luci-app-passwall2 package/luci-app-passwall2
#rm -rf luci-app-passwall2
